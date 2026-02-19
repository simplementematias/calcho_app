import '../../../booking/domain/entities/booking.dart';
import '../entities/payment_transaction.dart';

final class BookingPaymentProgress {
  const BookingPaymentProgress({
    required this.bookingId,
    required this.totalPriceCents,
    required this.approvedAmountCents,
    required this.currencyCode,
    required this.status,
  });

  final String bookingId;
  final int totalPriceCents;
  final int approvedAmountCents;
  final String currencyCode;
  final BookingStatus status;

  int get remainingAmountCents {
    final remaining = totalPriceCents - approvedAmountCents;
    if (remaining <= 0) {
      return 0;
    }
    return remaining;
  }

  bool get isConfirmed => approvedAmountCents >= totalPriceCents;
}

abstract interface class PaymentRepository {
  Future<PaymentTransaction> createPendingTransaction({
    required String bookingId,
    required String payerUserId,
    required int amountCents,
    required String currencyCode,
    required PaymentMethod method,
    required DateTime createdAt,
    String? referenceCode,
    String? proofUrl,
  });

  Stream<List<PaymentTransaction>> watchBookingTransactions(String bookingId);

  Future<void> approveTransaction({
    required String bookingId,
    required String transactionId,
    required String adminUserId,
    required DateTime reviewedAt,
    String? reviewComment,
  });

  Future<void> rejectTransaction({
    required String bookingId,
    required String transactionId,
    required String adminUserId,
    required DateTime reviewedAt,
    String? reviewComment,
  });

  Future<BookingPaymentProgress> getPaymentProgress(String bookingId);

  Stream<BookingPaymentProgress> watchPaymentProgress(String bookingId);

  Stream<bool> watchBookingConfirmation(String bookingId);

  Future<void> recalculateBookingPaymentState(String bookingId);
}
