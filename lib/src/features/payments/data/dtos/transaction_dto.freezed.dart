// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionDto {
  String get id;
  String get bookingId;
  String get payerUserId;
  int get amountCents;
  String get currencyCode;
  String get method;
  String get status;
  String? get proofUrl;
  String? get referenceCode;
  String? get reviewedByAdminId;
  @TimestampDateTimeConverter()
  DateTime get createdAt;
  @TimestampDateTimeConverter()
  DateTime? get reviewedAt;
  String? get reviewComment;

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionDtoCopyWith<TransactionDto> get copyWith =>
      _$TransactionDtoCopyWithImpl<TransactionDto>(
          this as TransactionDto, _$identity);

  /// Serializes this TransactionDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.payerUserId, payerUserId) ||
                other.payerUserId == payerUserId) &&
            (identical(other.amountCents, amountCents) ||
                other.amountCents == amountCents) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.proofUrl, proofUrl) ||
                other.proofUrl == proofUrl) &&
            (identical(other.referenceCode, referenceCode) ||
                other.referenceCode == referenceCode) &&
            (identical(other.reviewedByAdminId, reviewedByAdminId) ||
                other.reviewedByAdminId == reviewedByAdminId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewComment, reviewComment) ||
                other.reviewComment == reviewComment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bookingId,
      payerUserId,
      amountCents,
      currencyCode,
      method,
      status,
      proofUrl,
      referenceCode,
      reviewedByAdminId,
      createdAt,
      reviewedAt,
      reviewComment);

  @override
  String toString() {
    return 'TransactionDto(id: $id, bookingId: $bookingId, payerUserId: $payerUserId, amountCents: $amountCents, currencyCode: $currencyCode, method: $method, status: $status, proofUrl: $proofUrl, referenceCode: $referenceCode, reviewedByAdminId: $reviewedByAdminId, createdAt: $createdAt, reviewedAt: $reviewedAt, reviewComment: $reviewComment)';
  }
}

/// @nodoc
abstract mixin class $TransactionDtoCopyWith<$Res> {
  factory $TransactionDtoCopyWith(
          TransactionDto value, $Res Function(TransactionDto) _then) =
      _$TransactionDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String bookingId,
      String payerUserId,
      int amountCents,
      String currencyCode,
      String method,
      String status,
      String? proofUrl,
      String? referenceCode,
      String? reviewedByAdminId,
      @TimestampDateTimeConverter() DateTime createdAt,
      @TimestampDateTimeConverter() DateTime? reviewedAt,
      String? reviewComment});
}

/// @nodoc
class _$TransactionDtoCopyWithImpl<$Res>
    implements $TransactionDtoCopyWith<$Res> {
  _$TransactionDtoCopyWithImpl(this._self, this._then);

  final TransactionDto _self;
  final $Res Function(TransactionDto) _then;

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? payerUserId = null,
    Object? amountCents = null,
    Object? currencyCode = null,
    Object? method = null,
    Object? status = null,
    Object? proofUrl = freezed,
    Object? referenceCode = freezed,
    Object? reviewedByAdminId = freezed,
    Object? createdAt = null,
    Object? reviewedAt = freezed,
    Object? reviewComment = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: null == bookingId
          ? _self.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      payerUserId: null == payerUserId
          ? _self.payerUserId
          : payerUserId // ignore: cast_nullable_to_non_nullable
              as String,
      amountCents: null == amountCents
          ? _self.amountCents
          : amountCents // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _self.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      proofUrl: freezed == proofUrl
          ? _self.proofUrl
          : proofUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceCode: freezed == referenceCode
          ? _self.referenceCode
          : referenceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedByAdminId: freezed == reviewedByAdminId
          ? _self.reviewedByAdminId
          : reviewedByAdminId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reviewedAt: freezed == reviewedAt
          ? _self.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewComment: freezed == reviewComment
          ? _self.reviewComment
          : reviewComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TransactionDto].
extension TransactionDtoPatterns on TransactionDto {
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
    TResult Function(_TransactionDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TransactionDto() when $default != null:
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
    TResult Function(_TransactionDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TransactionDto():
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
    TResult? Function(_TransactionDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TransactionDto() when $default != null:
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
            String bookingId,
            String payerUserId,
            int amountCents,
            String currencyCode,
            String method,
            String status,
            String? proofUrl,
            String? referenceCode,
            String? reviewedByAdminId,
            @TimestampDateTimeConverter() DateTime createdAt,
            @TimestampDateTimeConverter() DateTime? reviewedAt,
            String? reviewComment)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TransactionDto() when $default != null:
        return $default(
            _that.id,
            _that.bookingId,
            _that.payerUserId,
            _that.amountCents,
            _that.currencyCode,
            _that.method,
            _that.status,
            _that.proofUrl,
            _that.referenceCode,
            _that.reviewedByAdminId,
            _that.createdAt,
            _that.reviewedAt,
            _that.reviewComment);
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
            String bookingId,
            String payerUserId,
            int amountCents,
            String currencyCode,
            String method,
            String status,
            String? proofUrl,
            String? referenceCode,
            String? reviewedByAdminId,
            @TimestampDateTimeConverter() DateTime createdAt,
            @TimestampDateTimeConverter() DateTime? reviewedAt,
            String? reviewComment)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TransactionDto():
        return $default(
            _that.id,
            _that.bookingId,
            _that.payerUserId,
            _that.amountCents,
            _that.currencyCode,
            _that.method,
            _that.status,
            _that.proofUrl,
            _that.referenceCode,
            _that.reviewedByAdminId,
            _that.createdAt,
            _that.reviewedAt,
            _that.reviewComment);
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
            String bookingId,
            String payerUserId,
            int amountCents,
            String currencyCode,
            String method,
            String status,
            String? proofUrl,
            String? referenceCode,
            String? reviewedByAdminId,
            @TimestampDateTimeConverter() DateTime createdAt,
            @TimestampDateTimeConverter() DateTime? reviewedAt,
            String? reviewComment)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TransactionDto() when $default != null:
        return $default(
            _that.id,
            _that.bookingId,
            _that.payerUserId,
            _that.amountCents,
            _that.currencyCode,
            _that.method,
            _that.status,
            _that.proofUrl,
            _that.referenceCode,
            _that.reviewedByAdminId,
            _that.createdAt,
            _that.reviewedAt,
            _that.reviewComment);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TransactionDto extends TransactionDto {
  const _TransactionDto(
      {required this.id,
      required this.bookingId,
      required this.payerUserId,
      required this.amountCents,
      required this.currencyCode,
      required this.method,
      required this.status,
      this.proofUrl,
      this.referenceCode,
      this.reviewedByAdminId,
      @TimestampDateTimeConverter() required this.createdAt,
      @TimestampDateTimeConverter() this.reviewedAt,
      this.reviewComment})
      : super._();
  factory _TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);

  @override
  final String id;
  @override
  final String bookingId;
  @override
  final String payerUserId;
  @override
  final int amountCents;
  @override
  final String currencyCode;
  @override
  final String method;
  @override
  final String status;
  @override
  final String? proofUrl;
  @override
  final String? referenceCode;
  @override
  final String? reviewedByAdminId;
  @override
  @TimestampDateTimeConverter()
  final DateTime createdAt;
  @override
  @TimestampDateTimeConverter()
  final DateTime? reviewedAt;
  @override
  final String? reviewComment;

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransactionDtoCopyWith<_TransactionDto> get copyWith =>
      __$TransactionDtoCopyWithImpl<_TransactionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.payerUserId, payerUserId) ||
                other.payerUserId == payerUserId) &&
            (identical(other.amountCents, amountCents) ||
                other.amountCents == amountCents) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.proofUrl, proofUrl) ||
                other.proofUrl == proofUrl) &&
            (identical(other.referenceCode, referenceCode) ||
                other.referenceCode == referenceCode) &&
            (identical(other.reviewedByAdminId, reviewedByAdminId) ||
                other.reviewedByAdminId == reviewedByAdminId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewComment, reviewComment) ||
                other.reviewComment == reviewComment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bookingId,
      payerUserId,
      amountCents,
      currencyCode,
      method,
      status,
      proofUrl,
      referenceCode,
      reviewedByAdminId,
      createdAt,
      reviewedAt,
      reviewComment);

  @override
  String toString() {
    return 'TransactionDto(id: $id, bookingId: $bookingId, payerUserId: $payerUserId, amountCents: $amountCents, currencyCode: $currencyCode, method: $method, status: $status, proofUrl: $proofUrl, referenceCode: $referenceCode, reviewedByAdminId: $reviewedByAdminId, createdAt: $createdAt, reviewedAt: $reviewedAt, reviewComment: $reviewComment)';
  }
}

/// @nodoc
abstract mixin class _$TransactionDtoCopyWith<$Res>
    implements $TransactionDtoCopyWith<$Res> {
  factory _$TransactionDtoCopyWith(
          _TransactionDto value, $Res Function(_TransactionDto) _then) =
      __$TransactionDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String bookingId,
      String payerUserId,
      int amountCents,
      String currencyCode,
      String method,
      String status,
      String? proofUrl,
      String? referenceCode,
      String? reviewedByAdminId,
      @TimestampDateTimeConverter() DateTime createdAt,
      @TimestampDateTimeConverter() DateTime? reviewedAt,
      String? reviewComment});
}

/// @nodoc
class __$TransactionDtoCopyWithImpl<$Res>
    implements _$TransactionDtoCopyWith<$Res> {
  __$TransactionDtoCopyWithImpl(this._self, this._then);

  final _TransactionDto _self;
  final $Res Function(_TransactionDto) _then;

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? payerUserId = null,
    Object? amountCents = null,
    Object? currencyCode = null,
    Object? method = null,
    Object? status = null,
    Object? proofUrl = freezed,
    Object? referenceCode = freezed,
    Object? reviewedByAdminId = freezed,
    Object? createdAt = null,
    Object? reviewedAt = freezed,
    Object? reviewComment = freezed,
  }) {
    return _then(_TransactionDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: null == bookingId
          ? _self.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      payerUserId: null == payerUserId
          ? _self.payerUserId
          : payerUserId // ignore: cast_nullable_to_non_nullable
              as String,
      amountCents: null == amountCents
          ? _self.amountCents
          : amountCents // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _self.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      proofUrl: freezed == proofUrl
          ? _self.proofUrl
          : proofUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceCode: freezed == referenceCode
          ? _self.referenceCode
          : referenceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedByAdminId: freezed == reviewedByAdminId
          ? _self.reviewedByAdminId
          : reviewedByAdminId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reviewedAt: freezed == reviewedAt
          ? _self.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewComment: freezed == reviewComment
          ? _self.reviewComment
          : reviewComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
