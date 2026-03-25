import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../domain/entities/venue.dart';
import '../providers/venues_provider.dart';
import '../widgets/venue_detail_sheet.dart';

class VenuesMapScreen extends ConsumerWidget {
  const VenuesMapScreen({super.key});

  static const CameraPosition _caracasCamera = CameraPosition(
    target: LatLng(10.4806, -66.9036),
    zoom: 12.5,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<List<Venue>>>(venuesListProvider, (_, next) {
      next.whenOrNull(
        error: (error, _) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error loading venues: $error'),
            ),
          );
        },
      );
    });

    final venuesAsync = ref.watch(venuesListProvider);

    final markers = venuesAsync.when(
      loading: () => <Marker>{},
      error: (_, _) => <Marker>{},
      data: (venues) => venues
          .map(
            (venue) => Marker(
              markerId: MarkerId(venue.id),
              position: LatLng(
                venue.location.latitude,
                venue.location.longitude,
              ),
              onTap: () => _showVenueBottomSheet(context, ref, venue.id),
            ),
          )
          .toSet(),
    );

    final isLoading = venuesAsync.isLoading && !venuesAsync.hasValue;
    final hasError = venuesAsync.hasError;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Canchas en Caracas'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          GoogleMap(
            initialCameraPosition: _caracasCamera,
            myLocationButtonEnabled: true,
            zoomControlsEnabled: false,
            markers: markers,
          ),
          venuesAsync.when(
            loading: () => const SizedBox.shrink(),
            error: (error, _) => Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Material(
                  color: Colors.red.shade700,
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Text(
                      'No se pudieron cargar las locaciones.',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            data: (_) => const SizedBox.shrink(),
          ),
          if (isLoading)
            Container(
              color: Colors.black26,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            ),
          if (hasError)
            const IgnorePointer(
              child: SizedBox.shrink(),
            ),
        ],
      ),
    );
  }

  Future<void> _showVenueBottomSheet(
    BuildContext context,
    WidgetRef ref,
    String venueId,
  ) {
    final selectedVenue = ref.read(venueByIdProvider(venueId));
    if (selectedVenue == null) {
      return Future<void>.value();
    }

    return showModalBottomSheet<void>(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withValues(alpha: 0.35),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.56,
          minChildSize: 0.4,
          maxChildSize: 0.86,
          builder: (_, _) {
            return VenueDetailSheet(
              venue: selectedVenue,
              key: ValueKey('venue-sheet-${selectedVenue.id}'),
            );
          },
        );
      },
    );
  }
}
