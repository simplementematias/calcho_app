// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingDto _$BookingDtoFromJson(Map<String, dynamic> json) => _BookingDto(
      id: json['id'] as String,
      venueId: json['venueId'] as String,
      courtId: json['courtId'] as String,
      createdByUserId: json['createdByUserId'] as String,
      participantUserIds: (json['participantUserIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      startAt: const TimestampDateTimeConverter().fromJson(json['startAt']),
      endAt: const TimestampDateTimeConverter().fromJson(json['endAt']),
      totalPriceCents: (json['totalPriceCents'] as num).toInt(),
      approvedAmountCents: (json['approvedAmountCents'] as num).toInt(),
      currencyCode: json['currencyCode'] as String,
      status: json['status'] as String,
      createdAt: const TimestampDateTimeConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampDateTimeConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$BookingDtoToJson(_BookingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'venueId': instance.venueId,
      'courtId': instance.courtId,
      'createdByUserId': instance.createdByUserId,
      'participantUserIds': instance.participantUserIds,
      'startAt': const TimestampDateTimeConverter().toJson(instance.startAt),
      'endAt': const TimestampDateTimeConverter().toJson(instance.endAt),
      'totalPriceCents': instance.totalPriceCents,
      'approvedAmountCents': instance.approvedAmountCents,
      'currencyCode': instance.currencyCode,
      'status': instance.status,
      'createdAt':
          const TimestampDateTimeConverter().toJson(instance.createdAt),
      'updatedAt':
          const TimestampDateTimeConverter().toJson(instance.updatedAt),
    };
