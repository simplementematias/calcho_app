// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VenueDto _$VenueDtoFromJson(Map<String, dynamic> json) => _VenueDto(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      addressLine: json['addressLine'] as String,
      zone: json['zone'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      supportedSports: (json['supportedSports'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool,
      createdAt: const TimestampDateTimeConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampDateTimeConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$VenueDtoToJson(_VenueDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'addressLine': instance.addressLine,
      'zone': instance.zone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'supportedSports': instance.supportedSports,
      'isActive': instance.isActive,
      'createdAt':
          const TimestampDateTimeConverter().toJson(instance.createdAt),
      'updatedAt':
          const TimestampDateTimeConverter().toJson(instance.updatedAt),
    };
