import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/converters/timestamp_converter.dart';
import '../../domain/entities/venue.dart';

part 'venue_dto.freezed.dart';
part 'venue_dto.g.dart';

@freezed
abstract class VenueDto with _$VenueDto {
  const VenueDto._();

  const factory VenueDto({
    required String id,
    required String name,
    required String slug,
    required String addressLine,
    required String zone,
    required double latitude,
    required double longitude,
    required List<String> supportedSports,
    required bool isActive,
    @TimestampDateTimeConverter() required DateTime createdAt,
    @TimestampDateTimeConverter() required DateTime updatedAt,
  }) = _VenueDto;

  factory VenueDto.fromJson(Map<String, dynamic> json) =>
      _$VenueDtoFromJson(json);

  factory VenueDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    if (data == null) {
      throw StateError('Venue document ${doc.id} has no data.');
    }
    final geoPoint = data['location'] as GeoPoint?;
    final latitude = geoPoint?.latitude ?? (data['latitude'] as num?)?.toDouble();
    final longitude = geoPoint?.longitude ?? (data['longitude'] as num?)?.toDouble();
    final name = (data['name'] as String?)?.trim() ?? 'Sede';
    final addressLine = (data['addressLine'] as String?)?.trim();
    final legacyAdress = (data['adress'] as String?)?.trim();
    final zone = (data['zone'] as String?)?.trim();
    final sportsRaw = data['supportedSports'] as List<dynamic>?;
    final supportedSports = sportsRaw
        ?.whereType<String>()
        .where((value) => value.trim().isNotEmpty)
        .toList(growable: false);

    return VenueDto.fromJson(<String, dynamic>{
      ...data,
      'id': doc.id,
      'name': name,
      'slug': (data['slug'] as String?)?.trim().isNotEmpty == true
          ? (data['slug'] as String).trim()
          : _slugFromName(name),
      'addressLine': (addressLine?.isNotEmpty ?? false)
          ? addressLine
          : (legacyAdress?.isNotEmpty ?? false)
              ? legacyAdress
              : 'Direccion no disponible',
      'zone': (zone?.isNotEmpty ?? false) ? zone : 'Caracas',
      'supportedSports': supportedSports ?? const <String>['multiSport'],
      'isActive': data['isActive'] as bool? ?? true,
      'createdAt': data['createdAt'] ?? Timestamp.now(),
      'updatedAt': data['updatedAt'] ?? Timestamp.now(),
      'latitude': latitude ?? 0,
      'longitude': longitude ?? 0,
    });
  }

  Map<String, dynamic> toFirestore() {
    final json = toJson();
    json.remove('id');
    json['location'] = GeoPoint(latitude, longitude);
    json.remove('latitude');
    json.remove('longitude');
    return json;
  }

  Venue toEntity() {
    return Venue(
      id: id,
      name: name,
      slug: slug,
      addressLine: addressLine,
      zone: zone,
      location: GeoPointValue(latitude: latitude, longitude: longitude),
      supportedSports:
          supportedSports.map(_sportTypeFromStorageValue).toList(growable: false),
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static VenueDto fromEntity(Venue venue) {
    return VenueDto(
      id: venue.id,
      name: venue.name,
      slug: venue.slug,
      addressLine: venue.addressLine,
      zone: venue.zone,
      latitude: venue.location.latitude,
      longitude: venue.location.longitude,
      supportedSports:
          venue.supportedSports.map(_sportTypeToStorageValue).toList(growable: false),
      isActive: venue.isActive,
      createdAt: venue.createdAt,
      updatedAt: venue.updatedAt,
    );
  }
}

SportType _sportTypeFromStorageValue(String value) {
  return SportType.values.firstWhere(
    (element) => element.name == value,
    orElse: () => SportType.multiSport,
  );
}

String _sportTypeToStorageValue(SportType sportType) => sportType.name;

String _slugFromName(String name) {
  return name
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]+'), '-')
      .replaceAll(RegExp(r'-+'), '-')
      .replaceAll(RegExp(r'^-|-$'), '');
}
