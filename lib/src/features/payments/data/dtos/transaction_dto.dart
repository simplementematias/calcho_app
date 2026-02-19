import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/converters/timestamp_converter.dart';
import '../../domain/entities/payment_transaction.dart';

part 'transaction_dto.freezed.dart';
part 'transaction_dto.g.dart';

@freezed
class TransactionDto with _$TransactionDto {
  const TransactionDto._();

  const factory TransactionDto({
    required String id,
    required String bookingId,
    required String payerUserId,
    required int amountCents,
    required String currencyCode,
    required String method,
    required String status,
    String? proofUrl,
    String? referenceCode,
    String? reviewedByAdminId,
    @TimestampDateTimeConverter() required DateTime createdAt,
    @TimestampDateTimeConverter() DateTime? reviewedAt,
    String? reviewComment,
  }) = _TransactionDto;

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);

  factory TransactionDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    if (data == null) {
      throw StateError('Transaction document ${doc.id} has no data.');
    }
    return TransactionDto.fromJson(<String, dynamic>{...data, 'id': doc.id});
  }

  Map<String, dynamic> toFirestore() {
    final json = toJson();
    json.remove('id');
    return json;
  }

  PaymentTransaction toEntity() {
    return PaymentTransaction(
      id: id,
      bookingId: bookingId,
      payerUserId: payerUserId,
      amountCents: amountCents,
      currencyCode: currencyCode,
      method: _paymentMethodFromStorageValue(method),
      status: _transactionStatusFromStorageValue(status),
      createdAt: createdAt,
      proofUrl: proofUrl,
      referenceCode: referenceCode,
      reviewedByAdminId: reviewedByAdminId,
      reviewedAt: reviewedAt,
      reviewComment: reviewComment,
    );
  }

  static TransactionDto fromEntity(PaymentTransaction transaction) {
    return TransactionDto(
      id: transaction.id,
      bookingId: transaction.bookingId,
      payerUserId: transaction.payerUserId,
      amountCents: transaction.amountCents,
      currencyCode: transaction.currencyCode,
      method: _paymentMethodToStorageValue(transaction.method),
      status: _transactionStatusToStorageValue(transaction.status),
      proofUrl: transaction.proofUrl,
      referenceCode: transaction.referenceCode,
      reviewedByAdminId: transaction.reviewedByAdminId,
      createdAt: transaction.createdAt,
      reviewedAt: transaction.reviewedAt,
      reviewComment: transaction.reviewComment,
    );
  }
}

PaymentMethod _paymentMethodFromStorageValue(String value) {
  return PaymentMethod.values.firstWhere(
    (element) => element.name == value,
    orElse: () => PaymentMethod.bankTransfer,
  );
}

String _paymentMethodToStorageValue(PaymentMethod method) => method.name;

TransactionStatus _transactionStatusFromStorageValue(String value) {
  return TransactionStatus.values.firstWhere(
    (element) => element.name == value,
    orElse: () => TransactionStatus.pending,
  );
}

String _transactionStatusToStorageValue(TransactionStatus status) => status.name;
