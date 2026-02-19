import '../entities/booking.dart';

abstract interface class BookingRepository {
  Stream<List<Booking>> getBookings({String? createdByUserId});

  Future<Booking> getBookingById(String bookingId);

  Future<Booking> createBooking(Booking booking);

  Future<void> updateBooking(Booking booking);

  Future<void> deleteBooking(String bookingId);
}
