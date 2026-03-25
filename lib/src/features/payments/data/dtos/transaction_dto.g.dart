// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) =>
    _TransactionDto(
      id: json['id'] as String,
      bookingId: json['bookingId'] as String,
      payerUserId: json['payerUserId'] as String,
      amountCents: (json['amountCents'] as num).toInt(),
      currencyCode: json['currencyCode'] as String,
      method: json['method'] as String,
      status: json['status'] as String,
      proofUrl: json['proofUrl'] as String?,
      referenceCode: json['referenceCode'] as String?,
      reviewedByAdminId: json['reviewedByAdminId'] as String?,
      createdAt: const TimestampDateTimeConverter().fromJson(json['createdAt']),
      reviewedAt: const TimestampDateTimeConverter().fromJson(
        json['reviewedAt'],
      ),
      reviewComment: json['reviewComment'] as String?,
    );

Map<String, dynamic> _$TransactionDtoToJson(
  _TransactionDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'bookingId': instance.bookingId,
  'payerUserId': instance.payerUserId,
  'amountCents': instance.amountCents,
  'currencyCode': instance.currencyCode,
  'method': instance.method,
  'status': instance.status,
  'proofUrl': instance.proofUrl,
  'referenceCode': instance.referenceCode,
  'reviewedByAdminId': instance.reviewedByAdminId,
  'createdAt': const TimestampDateTimeConverter().toJson(instance.createdAt),
  'reviewedAt': _$JsonConverterToJson<Object?, DateTime>(
    instance.reviewedAt,
    const TimestampDateTimeConverter().toJson,
  ),
  'reviewComment': instance.reviewComment,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
