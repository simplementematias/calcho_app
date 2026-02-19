import 'venue.dart';

enum CourtSurface {
  grass,
  syntheticGrass,
  clay,
  hard,
  concrete,
  parquet,
  sand,
}

final class Court {
  const Court({
    required this.id,
    required this.venueId,
    required this.name,
    required this.sportType,
    required this.surface,
    required this.pricePerHourCents,
    required this.currencyCode,
    required this.capacity,
    required this.isIndoor,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String venueId;
  final String name;
  final SportType sportType;
  final CourtSurface surface;
  final int pricePerHourCents;
  final String currencyCode;
  final int capacity;
  final bool isIndoor;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
}
