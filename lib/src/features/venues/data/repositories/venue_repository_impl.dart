import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/venue.dart';
import '../../domain/repositories/venue_repository.dart';
import '../dtos/venue_dto.dart';

final class VenueRepositoryImpl implements VenueRepository {
  VenueRepositoryImpl({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _venuesRef =>
      _firestore.collection('venues');

  @override
  Stream<List<Venue>> getVenues() {
    return _venuesRef.snapshots().map((snapshot) {
      return snapshot.docs
          .map(VenueDto.fromFirestore)
          .map((dto) => dto.toEntity())
          .toList(growable: false);
    });
  }
}
