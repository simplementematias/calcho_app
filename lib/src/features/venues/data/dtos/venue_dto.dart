import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/converters/timestamp_converter.dart';
import '../../domain/entities/venue.dart';

part 'venue_dto.freezed.dart';
part 'venue_dto.g.dart';

@freezed
class VenueDto with _$VenueDto {
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
    return VenueDto.fromJson(<String, dynamic>{...data, 'id': doc.id});
  }

  Map<String, dynamic> toFirestore() {
    final json = toJson();
    json.remove('id');
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
