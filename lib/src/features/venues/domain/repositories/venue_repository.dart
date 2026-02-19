import '../entities/venue.dart';

abstract interface class VenueRepository {
  Stream<List<Venue>> getVenues();
}
