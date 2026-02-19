import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/venue.dart';
import '../../domain/repositories/venue_repository.dart';

part 'venues_provider.g.dart';

@Riverpod(keepAlive: true)
VenueRepository venueRepository(VenueRepositoryRef ref) {
  throw UnimplementedError(
    'Provide a VenueRepository implementation in your app bootstrap.',
  );
}

@riverpod
Stream<List<Venue>> venuesList(VenuesListRef ref) {
  final repository = ref.watch(venueRepositoryProvider);
  return repository.getVenues();
}
