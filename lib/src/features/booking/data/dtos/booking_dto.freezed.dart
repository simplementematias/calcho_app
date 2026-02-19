// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingDto {
  String get id;
  String get venueId;
  String get courtId;
  String get createdByUserId;
  List<String> get participantUserIds;
  @TimestampDateTimeConverter()
  DateTime get startAt;
  @TimestampDateTimeConverter()
  DateTime get endAt;
  int get totalPriceCents;
  int get approvedAmountCents;
  String get currencyCode;
  String get status;
  @TimestampDateTimeConverter()
  DateTime get createdAt;
  @TimestampDateTimeConverter()
  DateTime get updatedAt;

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookingDtoCopyWith<BookingDto> get copyWith =>
      _$BookingDtoCopyWithImpl<BookingDto>(this as BookingDto, _$identity);

  /// Serializes this BookingDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookingDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.venueId, venueId) || other.venueId == venueId) &&
            (identical(other.courtId, courtId) || other.courtId == courtId) &&
            (identical(other.createdByUserId, createdByUserId) ||
                other.createdByUserId == createdByUserId) &&
            const DeepCollectionEquality()
                .equals(other.participantUserIds, participantUserIds) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.totalPriceCents, totalPriceCents) ||
                other.totalPriceCents == totalPriceCents) &&
            (identical(other.approvedAmountCents, approvedAmountCents) ||
                other.approvedAmountCents == approvedAmountCents) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      venueId,
      courtId,
      createdByUserId,
      const DeepCollectionEquality().hash(participantUserIds),
      startAt,
      endAt,
      totalPriceCents,
      approvedAmountCents,
      currencyCode,
      status,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'BookingDto(id: $id, venueId: $venueId, courtId: $courtId, createdByUserId: $createdByUserId, participantUserIds: $participantUserIds, startAt: $startAt, endAt: $endAt, totalPriceCents: $totalPriceCents, approvedAmountCents: $approvedAmountCents, currencyCode: $currencyCode, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $BookingDtoCopyWith<$Res> {
  factory $BookingDtoCopyWith(
          BookingDto value, $Res Function(BookingDto) _then) =
      _$BookingDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String venueId,
      String courtId,
      String createdByUserId,
      List<String> participantUserIds,
      @TimestampDateTimeConverter() DateTime startAt,
      @TimestampDateTimeConverter() DateTime endAt,
      int totalPriceCents,
      int approvedAmountCents,
      String currencyCode,
      String status,
      @TimestampDateTimeConverter() DateTime createdAt,
      @TimestampDateTimeConverter() DateTime updatedAt});
}

/// @nodoc
class _$BookingDtoCopyWithImpl<$Res> implements $BookingDtoCopyWith<$Res> {
  _$BookingDtoCopyWithImpl(this._self, this._then);

  final BookingDto _self;
  final $Res Function(BookingDto) _then;

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? venueId = null,
    Object? courtId = null,
    Object? createdByUserId = null,
    Object? participantUserIds = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? totalPriceCents = null,
    Object? approvedAmountCents = null,
    Object? currencyCode = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      venueId: null == venueId
          ? _self.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
      courtId: null == courtId
          ? _self.courtId
          : courtId // ignore: cast_nullable_to_non_nullable
              as String,
      createdByUserId: null == createdByUserId
          ? _self.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as String,
      participantUserIds: null == participantUserIds
          ? _self.participantUserIds
          : participantUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalPriceCents: null == totalPriceCents
          ? _self.totalPriceCents
          : totalPriceCents // ignore: cast_nullable_to_non_nullable
              as int,
      approvedAmountCents: null == approvedAmountCents
          ? _self.approvedAmountCents
          : approvedAmountCents // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _self.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [BookingDto].
extension BookingDtoPatterns on BookingDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BookingDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookingDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BookingDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookingDto():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BookingDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookingDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String venueId,
            String courtId,
            String createdByUserId,
            List<String> participantUserIds,
            @TimestampDateTimeConverter() DateTime startAt,
            @TimestampDateTimeConverter() DateTime endAt,
            int totalPriceCents,
            int approvedAmountCents,
            String currencyCode,
            String status,
            @TimestampDateTimeConverter() DateTime createdAt,
            @TimestampDateTimeConverter() DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BookingDto() when $default != null:
        return $default(
            _that.id,
            _that.venueId,
            _that.courtId,
            _that.createdByUserId,
            _that.participantUserIds,
            _that.startAt,
            _that.endAt,
            _that.totalPriceCents,
            _that.approvedAmountCents,
            _that.currencyCode,
            _that.status,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String venueId,
            String courtId,
            String createdByUserId,
            List<String> participantUserIds,
            @TimestampDateTimeConverter() DateTime startAt,
            @TimestampDateTimeConverter() DateTime endAt,
            int totalPriceCents,
            int approvedAmountCents,
            String currencyCode,
            String status,
            @TimestampDateTimeConverter() DateTime createdAt,
            @TimestampDateTimeConverter() DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookingDto():
        return $default(
            _that.id,
            _that.venueId,
            _that.courtId,
            _that.createdByUserId,
            _that.participantUserIds,
            _that.startAt,
            _that.endAt,
            _that.totalPriceCents,
            _that.approvedAmountCents,
            _that.currencyCode,
            _that.status,
            _that.createdAt,
            _that.updatedAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String venueId,
            String courtId,
            String createdByUserId,
            List<String> participantUserIds,
            @TimestampDateTimeConverter() DateTime startAt,
            @TimestampDateTimeConverter() DateTime endAt,
            int totalPriceCents,
            int approvedAmountCents,
            String currencyCode,
            String status,
            @TimestampDateTimeConverter() DateTime createdAt,
            @TimestampDateTimeConverter() DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BookingDto() when $default != null:
        return $default(
            _that.id,
            _that.venueId,
            _that.courtId,
            _that.createdByUserId,
            _that.participantUserIds,
            _that.startAt,
            _that.endAt,
            _that.totalPriceCents,
            _that.approvedAmountCents,
            _that.currencyCode,
            _that.status,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BookingDto extends BookingDto {
  const _BookingDto(
      {required this.id,
      required this.venueId,
      required this.courtId,
      required this.createdByUserId,
      required final List<String> participantUserIds,
      @TimestampDateTimeConverter() required this.startAt,
      @TimestampDateTimeConverter() required this.endAt,
      required this.totalPriceCents,
      required this.approvedAmountCents,
      required this.currencyCode,
      required this.status,
      @TimestampDateTimeConverter() required this.createdAt,
      @TimestampDateTimeConverter() required this.updatedAt})
      : _participantUserIds = participantUserIds,
        super._();
  factory _BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);

  @override
  final String id;
  @override
  final String venueId;
  @override
  final String courtId;
  @override
  final String createdByUserId;
  final List<String> _participantUserIds;
  @override
  List<String> get participantUserIds {
    if (_participantUserIds is EqualUnmodifiableListView)
      return _participantUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantUserIds);
  }

  @override
  @TimestampDateTimeConverter()
  final DateTime startAt;
  @override
  @TimestampDateTimeConverter()
  final DateTime endAt;
  @override
  final int totalPriceCents;
  @override
  final int approvedAmountCents;
  @override
  final String currencyCode;
  @override
  final String status;
  @override
  @TimestampDateTimeConverter()
  final DateTime createdAt;
  @override
  @TimestampDateTimeConverter()
  final DateTime updatedAt;

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookingDtoCopyWith<_BookingDto> get copyWith =>
      __$BookingDtoCopyWithImpl<_BookingDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookingDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.venueId, venueId) || other.venueId == venueId) &&
            (identical(other.courtId, courtId) || other.courtId == courtId) &&
            (identical(other.createdByUserId, createdByUserId) ||
                other.createdByUserId == createdByUserId) &&
            const DeepCollectionEquality()
                .equals(other._participantUserIds, _participantUserIds) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.totalPriceCents, totalPriceCents) ||
                other.totalPriceCents == totalPriceCents) &&
            (identical(other.approvedAmountCents, approvedAmountCents) ||
                other.approvedAmountCents == approvedAmountCents) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      venueId,
      courtId,
      createdByUserId,
      const DeepCollectionEquality().hash(_participantUserIds),
      startAt,
      endAt,
      totalPriceCents,
      approvedAmountCents,
      currencyCode,
      status,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'BookingDto(id: $id, venueId: $venueId, courtId: $courtId, createdByUserId: $createdByUserId, participantUserIds: $participantUserIds, startAt: $startAt, endAt: $endAt, totalPriceCents: $totalPriceCents, approvedAmountCents: $approvedAmountCents, currencyCode: $currencyCode, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$BookingDtoCopyWith<$Res>
    implements $BookingDtoCopyWith<$Res> {
  factory _$BookingDtoCopyWith(
          _BookingDto value, $Res Function(_BookingDto) _then) =
      __$BookingDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String venueId,
      String courtId,
      String createdByUserId,
      List<String> participantUserIds,
      @TimestampDateTimeConverter() DateTime startAt,
      @TimestampDateTimeConverter() DateTime endAt,
      int totalPriceCents,
      int approvedAmountCents,
      String currencyCode,
      String status,
      @TimestampDateTimeConverter() DateTime createdAt,
      @TimestampDateTimeConverter() DateTime updatedAt});
}

/// @nodoc
class __$BookingDtoCopyWithImpl<$Res> implements _$BookingDtoCopyWith<$Res> {
  __$BookingDtoCopyWithImpl(this._self, this._then);

  final _BookingDto _self;
  final $Res Function(_BookingDto) _then;

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? venueId = null,
    Object? courtId = null,
    Object? createdByUserId = null,
    Object? participantUserIds = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? totalPriceCents = null,
    Object? approvedAmountCents = null,
    Object? currencyCode = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_BookingDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      venueId: null == venueId
          ? _self.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
      courtId: null == courtId
          ? _self.courtId
          : courtId // ignore: cast_nullable_to_non_nullable
              as String,
      createdByUserId: null == createdByUserId
          ? _self.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as String,
      participantUserIds: null == participantUserIds
          ? _self._participantUserIds
          : participantUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalPriceCents: null == totalPriceCents
          ? _self.totalPriceCents
          : totalPriceCents // ignore: cast_nullable_to_non_nullable
              as int,
      approvedAmountCents: null == approvedAmountCents
          ? _self.approvedAmountCents
          : approvedAmountCents // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _self.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
