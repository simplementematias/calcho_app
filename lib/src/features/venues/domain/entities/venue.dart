enum SportType {
  football,
  futsal,
  padel,
  tennis,
  basketball,
  volleyball,
  baseball,
  multiSport,
}

final class GeoPointValue {
  const GeoPointValue({
    required this.latitude,
    required this.longitude,
  });

  final double latitude;
  final double longitude;
}

final class Venue {
  const Venue({
    required this.id,
    required this.name,
    required this.slug,
    required this.addressLine,
    required this.zone,
    required this.location,
    required this.supportedSports,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String name;
  final String slug;
  final String addressLine;
  final String zone;
  final GeoPointValue location;
  final List<SportType> supportedSports;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
}
