enum PaymentMethod {
  pagoMovil,
  zelle,
  binance,
  bankTransfer,
}

enum TransactionStatus {
  pending,
  approved,
  rejected,
  cancelled,
}

final class PaymentTransaction {
  const PaymentTransaction({
    required this.id,
    required this.bookingId,
    required this.payerUserId,
    required this.amountCents,
    required this.currencyCode,
    required this.method,
    required this.status,
    required this.createdAt,
    this.proofUrl,
    this.referenceCode,
    this.reviewedByAdminId,
    this.reviewedAt,
    this.reviewComment,
  });

  final String id;
  final String bookingId;
  final String payerUserId;
  final int amountCents;
  final String currencyCode;
  final PaymentMethod method;
  final TransactionStatus status;
  final String? proofUrl;
  final String? referenceCode;
  final String? reviewedByAdminId;
  final DateTime createdAt;
  final DateTime? reviewedAt;
  final String? reviewComment;
}
