import '../../domain/entities/venue.dart';
import '../../domain/repositories/venue_repository.dart';

/// Fallback repository used when Firebase is not configured yet.
final class VenueRepositoryFallbackImpl implements VenueRepository {
  @override
  Stream<List<Venue>> getVenues() => Stream.value(const <Venue>[]);
}
