import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

/// Converts Firestore Timestamp <-> Dart DateTime for JSON DTOs.
final class TimestampDateTimeConverter
    implements JsonConverter<DateTime, Object?> {
  const TimestampDateTimeConverter();

  @override
  DateTime fromJson(Object? json) {
    if (json is Timestamp) {
      return json.toDate();
    }
    if (json is String) {
      return DateTime.parse(json);
    }
    if (json is int) {
      return DateTime.fromMillisecondsSinceEpoch(json, isUtc: true);
    }
    throw const FormatException('Invalid date format for Firestore timestamp');
  }

  @override
  Object toJson(DateTime object) => Timestamp.fromDate(object.toUtc());
}
