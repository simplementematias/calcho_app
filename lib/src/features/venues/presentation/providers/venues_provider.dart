import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/court.dart';
import '../../domain/entities/venue.dart';
import '../../domain/repositories/venue_repository.dart';

final venueRepositoryProvider = Provider<VenueRepository>((ref) {
  throw UnimplementedError('Debes implementar el repositorio');
});

final venuesListProvider = StreamProvider.autoDispose<List<Venue>>((ref) {
  return ref.watch(venueRepositoryProvider).getVenues();
});

final venueByIdProvider = Provider.autoDispose.family<Venue?, String>((
  ref,
  venueId,
) {
  final venuesAsync = ref.watch(venuesListProvider);
  return venuesAsync.maybeWhen(
    data: (venues) {
      for (final venue in venues) {
        if (venue.id == venueId) {
          return venue;
        }
      }
      return null;
    },
    orElse: () => null,
  );
});

final venueCourtsProvider =
    StreamProvider.autoDispose.family<List<CourtRealtimeView>, String>((
    ref,
    venueId,
) {
      final firestore = FirebaseFirestore.instance;

      final courtsQuery = firestore
          .collection('venues')
          .doc(venueId)
          .collection('courts');

      final bookingsQuery =
          firestore.collection('bookings').where('venueId', isEqualTo: venueId);

      return Stream<List<CourtRealtimeView>>.multi((controller) {
        var courts = const <Court>[];
        var occupiedNowCourtIds = const <String>{};

        void emit() {
          final realtimeCourts = courts
              .map(
                (court) => CourtRealtimeView(
                  court: court,
                  isAvailable: court.isActive && !occupiedNowCourtIds.contains(court.id),
                ),
              )
              .toList(growable: false);
          controller.add(realtimeCourts);
        }

        final courtsSub = courtsQuery.snapshots().listen(
          (snapshot) {
            courts = snapshot.docs.map(_courtFromFirestoreDoc).toList(growable: false);
            emit();
          },
          onError: controller.addError,
        );

        final bookingsSub = bookingsQuery.snapshots().listen(
          (snapshot) {
            occupiedNowCourtIds = _computeOccupiedCourtsNow(snapshot.docs);
            emit();
          },
          onError: controller.addError,
        );

        controller.onCancel = () async {
          await courtsSub.cancel();
          await bookingsSub.cancel();
        };
      });
    });

final class CourtRealtimeView {
  const CourtRealtimeView({
    required this.court,
    required this.isAvailable,
  });

  final Court court;
  final bool isAvailable;
}

Court _courtFromFirestoreDoc(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
  final data = doc.data();
  final legacyPrice = data['pricePerHour'] as num?;
  final canonicalPrice = data['pricePerHourCents'] as num?;
  final isActive = data['isActive'] as bool? ?? data['isAvailable'] as bool? ?? true;

  return Court(
    id: doc.id,
    venueId: data['venueId'] as String? ?? '',
    name: data['name'] as String? ?? 'Cancha',
    sportType: _sportTypeFromStorageValue(
      data['sportType'] as String? ?? data['type'] as String?,
    ),
    surface: _courtSurfaceFromStorageValue(data['surface'] as String?),
    pricePerHourCents: (canonicalPrice ?? legacyPrice ?? 0).toInt(),
    currencyCode: data['currencyCode'] as String? ?? 'USD',
    capacity: (data['capacity'] as num?)?.toInt() ?? 10,
    isIndoor: data['isIndoor'] as bool? ?? false,
    isActive: isActive,
    createdAt: _parseFirestoreDateTime(data['createdAt']) ?? DateTime.now(),
    updatedAt: _parseFirestoreDateTime(data['updatedAt']) ?? DateTime.now(),
  );
}

Set<String> _computeOccupiedCourtsNow(
  List<QueryDocumentSnapshot<Map<String, dynamic>>> bookingDocs,
) {
  final nowVz = _toVenezuelaTime(DateTime.now().toUtc());
  final dayStart = DateTime(nowVz.year, nowVz.month, nowVz.day);
  final dayEnd = dayStart.add(const Duration(days: 1));
  final occupied = <String>{};

  for (final doc in bookingDocs) {
    final data = doc.data();
    final status = (data['status'] as String?) ?? '';
    if (status == 'cancelled' || status == 'completed') {
      continue;
    }

    final courtId = data['courtId'] as String?;
    if (courtId == null || courtId.isEmpty) {
      continue;
    }

    final start = _parseFirestoreDateTime(data['startTime']) ??
        _parseFirestoreDateTime(data['startAt']);
    final end =
        _parseFirestoreDateTime(data['endTime']) ?? _parseFirestoreDateTime(data['endAt']);
    if (start == null || end == null) {
      continue;
    }

    final startVz = _toVenezuelaTime(start);
    final endVz = _toVenezuelaTime(end);
    final intersectsToday = startVz.isBefore(dayEnd) && endVz.isAfter(dayStart);
    final activeNow = !nowVz.isBefore(startVz) && nowVz.isBefore(endVz);
    if (intersectsToday && activeNow) {
      occupied.add(courtId);
    }
  }
  return occupied;
}

DateTime _toVenezuelaTime(DateTime dateTime) {
  final utcDateTime = dateTime.isUtc ? dateTime : dateTime.toUtc();
  // Venezuela is fixed UTC-4 and has no DST.
  return utcDateTime.subtract(const Duration(hours: 4));
}

DateTime? _parseFirestoreDateTime(Object? value) {
  if (value == null) {
    return null;
  }
  if (value is Timestamp) {
    return value.toDate();
  }
  if (value is DateTime) {
    return value;
  }
  if (value is String) {
    return DateTime.tryParse(value);
  }
  return null;
}

SportType _sportTypeFromStorageValue(String? value) {
  if (value == null) {
    return SportType.multiSport;
  }
  final normalized = value
      .toLowerCase()
      .trim()
      .replaceAll('ú', 'u')
      .replaceAll('ó', 'o')
      .replaceAll('á', 'a');

  if (normalized == 'futbol 5' || normalized == 'futbol5') {
    return SportType.futsal;
  }
  if (normalized == 'futbol 7' || normalized == 'futbol7') {
    return SportType.football;
  }
  if (normalized == 'futbol' || normalized == 'football') {
    return SportType.football;
  }

  return SportType.values.firstWhere(
    (element) => element.name.toLowerCase() == normalized,
    orElse: () => SportType.multiSport,
  );
}

CourtSurface _courtSurfaceFromStorageValue(String? value) {
  if (value == null) {
    return CourtSurface.syntheticGrass;
  }
  return CourtSurface.values.firstWhere(
    (element) => element.name == value,
    orElse: () => CourtSurface.syntheticGrass,
  );
}