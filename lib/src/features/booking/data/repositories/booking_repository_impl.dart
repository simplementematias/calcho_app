import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/errors/app_exception.dart';
import '../../domain/entities/booking.dart';
import '../../domain/repositories/booking_repository.dart';
import '../dtos/booking_dto.dart';

final class BookingRepositoryImpl implements BookingRepository {
  BookingRepositoryImpl({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _bookingsRef =>
      _firestore.collection('bookings');

  @override
  Stream<List<Booking>> getBookings({String? createdByUserId}) async* {
    try {
      Query<Map<String, dynamic>> query = _bookingsRef.orderBy('startAt');
      if (createdByUserId != null && createdByUserId.isNotEmpty) {
        query = query.where('createdByUserId', isEqualTo: createdByUserId);
      }

      await for (final snapshot in query.snapshots()) {
        final bookings = snapshot.docs
            .map(BookingDto.fromFirestore)
            .map((dto) => dto.toEntity())
            .toList(growable: false);
        yield bookings;
      }
    } on FirebaseException catch (error) {
      throw _mapFirebaseException(error);
    } catch (_) {
      throw const ServerException('Unexpected error getting bookings stream');
    }
  }

  @override
  Future<Booking> getBookingById(String bookingId) async {
    try {
      final doc = await _bookingsRef.doc(bookingId).get();
      if (!doc.exists) {
        throw NotFoundException('Booking $bookingId not found');
      }
      return BookingDto.fromFirestore(doc).toEntity();
    } on FirebaseException catch (error) {
      throw _mapFirebaseException(error);
    } on AppException {
      rethrow;
    } catch (_) {
      throw const ServerException('Unexpected error getting booking by id');
    }
  }

  @override
  Future<Booking> createBooking(Booking booking) async {
    try {
      final id = booking.id.isEmpty ? _bookingsRef.doc().id : booking.id;
      final dto = BookingDto.fromEntity(
        Booking(
          id: id,
          venueId: booking.venueId,
          courtId: booking.courtId,
          createdByUserId: booking.createdByUserId,
          participantUserIds: booking.participantUserIds,
          startAt: booking.startAt,
          endAt: booking.endAt,
          totalPriceCents: booking.totalPriceCents,
          approvedAmountCents: booking.approvedAmountCents,
          currencyCode: booking.currencyCode,
          status: booking.status,
          createdAt: booking.createdAt,
          updatedAt: booking.updatedAt,
        ),
      );

      await _bookingsRef.doc(id).set(dto.toFirestore());
      return dto.toEntity();
    } on FirebaseException catch (error) {
      throw _mapFirebaseException(error);
    } catch (_) {
      throw const ServerException('Unexpected error creating booking');
    }
  }

  @override
  Future<void> updateBooking(Booking booking) async {
    try {
      final dto = BookingDto.fromEntity(booking);
      await _bookingsRef.doc(booking.id).update(dto.toFirestore());
    } on FirebaseException catch (error) {
      throw _mapFirebaseException(error);
    } catch (_) {
      throw const ServerException('Unexpected error updating booking');
    }
  }

  @override
  Future<void> deleteBooking(String bookingId) async {
    try {
      await _bookingsRef.doc(bookingId).delete();
    } on FirebaseException catch (error) {
      throw _mapFirebaseException(error);
    } catch (_) {
      throw const ServerException('Unexpected error deleting booking');
    }
  }

  AppException _mapFirebaseException(FirebaseException error) {
    switch (error.code) {
      case 'permission-denied':
        return PermissionException(
          error.message ?? 'Permission denied while accessing bookings',
        );
      case 'not-found':
        return NotFoundException(error.message ?? 'Booking not found');
      default:
        return ServerException(
          error.message ?? 'Firestore operation failed for bookings',
        );
    }
  }
}
