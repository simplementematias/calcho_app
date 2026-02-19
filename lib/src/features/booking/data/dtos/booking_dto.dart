import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/converters/timestamp_converter.dart';
import '../../domain/entities/booking.dart';

part 'booking_dto.freezed.dart';
part 'booking_dto.g.dart';

@freezed
class BookingDto with _$BookingDto {
  const BookingDto._();

  const factory BookingDto({
    required String id,
    required String venueId,
    required String courtId,
    required String createdByUserId,
    required List<String> participantUserIds,
    @TimestampDateTimeConverter() required DateTime startAt,
    @TimestampDateTimeConverter() required DateTime endAt,
    required int totalPriceCents,
    required int approvedAmountCents,
    required String currencyCode,
    required String status,
    @TimestampDateTimeConverter() required DateTime createdAt,
    @TimestampDateTimeConverter() required DateTime updatedAt,
  }) = _BookingDto;

  factory BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);

  factory BookingDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    if (data == null) {
      throw StateError('Booking document ${doc.id} has no data.');
    }
    return BookingDto.fromJson(<String, dynamic>{...data, 'id': doc.id});
  }

  Map<String, dynamic> toFirestore() {
    final json = toJson();
    json.remove('id');
    return json;
  }

  Booking toEntity() {
    return Booking(
      id: id,
      venueId: venueId,
      courtId: courtId,
      createdByUserId: createdByUserId,
      participantUserIds: participantUserIds,
      startAt: startAt,
      endAt: endAt,
      totalPriceCents: totalPriceCents,
      approvedAmountCents: approvedAmountCents,
      currencyCode: currencyCode,
      status: _bookingStatusFromStorageValue(status),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static BookingDto fromEntity(Booking booking) {
    return BookingDto(
      id: booking.id,
      venueId: booking.venueId,
      courtId: booking.courtId,
      createdByUserId: booking.createdByUserId,
      participantUserIds: booking.participantUserIds,
      startAt: booking.startAt,
      endAt: booking.endAt,
      totalPriceCents: booking.totalPriceCents,
      approvedAmountCents: booking.approvedAmountCents,
      currencyCode: booking.currencyCode,
      status: _bookingStatusToStorageValue(booking.status),
      createdAt: booking.createdAt,
      updatedAt: booking.updatedAt,
    );
  }
}

BookingStatus _bookingStatusFromStorageValue(String value) {
  return BookingStatus.values.firstWhere(
    (element) => element.name == value,
    orElse: () => BookingStatus.pendingPayment,
  );
}

String _bookingStatusToStorageValue(BookingStatus status) => status.name;
