enum BookingStatus {
  pendingPayment,
  partiallyPaid,
  confirmed,
  cancelled,
  completed,
}

final class Booking {
  const Booking({
    required this.id,
    required this.venueId,
    required this.courtId,
    required this.createdByUserId,
    required this.participantUserIds,
    required this.startAt,
    required this.endAt,
    required this.totalPriceCents,
    required this.approvedAmountCents,
    required this.currencyCode,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String venueId;
  final String courtId;
  final String createdByUserId;
  final List<String> participantUserIds;
  final DateTime startAt;
  final DateTime endAt;
  final int totalPriceCents;
  final int approvedAmountCents;
  final String currencyCode;
  final BookingStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;

  Duration get duration => endAt.difference(startAt);

  int get remainingAmountCents {
    final remaining = totalPriceCents - approvedAmountCents;
    if (remaining <= 0) {
      return 0;
    }
    return remaining;
  }

  bool get isFullyPaid => approvedAmountCents >= totalPriceCents;
}
