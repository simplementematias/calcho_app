// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'venue_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VenueDto {
  String get id;
  String get name;
  String get slug;
  String get addressLine;
  String get zone;
  double get latitude;
  double get longitude;
  List<String> get supportedSports;
  bool get isActive;
  @TimestampDateTimeConverter()
  DateTime get createdAt;
  @TimestampDateTimeConverter()
  DateTime get updatedAt;

  /// Create a copy of VenueDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VenueDtoCopyWith<VenueDto> get copyWith =>
      _$VenueDtoCopyWithImpl<VenueDto>(this as VenueDto, _$identity);

  /// Serializes this VenueDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VenueDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.addressLine, addressLine) ||
                other.addressLine == addressLine) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality()
                .equals(other.supportedSports, supportedSports) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
      name,
      slug,
      addressLine,
      zone,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(supportedSports),
      isActive,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'VenueDto(id: $id, name: $name, slug: $slug, addressLine: $addressLine, zone: $zone, latitude: $latitude, longitude: $longitude, supportedSports: $supportedSports, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $VenueDtoCopyWith<$Res> {
  factory $VenueDtoCopyWith(VenueDto value, $Res Function(VenueDto) _then) =
      _$VenueDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String addressLine,
      String zone,
      double latitude,
      double longitude,
      List<String> supportedSports,
      bool isActive,
      @TimestampDateTimeConverter() DateTime createdAt,
      @TimestampDateTimeConverter() DateTime updatedAt});
}

/// @nodoc
class _$VenueDtoCopyWithImpl<$Res> implements $VenueDtoCopyWith<$Res> {
  _$VenueDtoCopyWithImpl(this._self, this._then);

  final VenueDto _self;
  final $Res Function(VenueDto) _then;

  /// Create a copy of VenueDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? addressLine = null,
    Object? zone = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? supportedSports = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine: null == addressLine
          ? _self.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      zone: null == zone
          ? _self.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      supportedSports: null == supportedSports
          ? _self.supportedSports
          : supportedSports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
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

/// Adds pattern-matching-related methods to [VenueDto].
extension VenueDtoPatterns on VenueDto {
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
    TResult Function(_VenueDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VenueDto() when $default != null:
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
    TResult Function(_VenueDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VenueDto():
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
    TResult? Function(_VenueDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VenueDto() when $default != null:
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
            String name,
            String slug,
            String addressLine,
            String zone,
            double latitude,
            double longitude,
            List<String> supportedSports,
            bool isActive,
            @TimestampDateTimeConverter() DateTime createdAt,
            @TimestampDateTimeConverter() DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VenueDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.slug,
            _that.addressLine,
            _that.zone,
            _that.latitude,
            _that.longitude,
            _that.supportedSports,
            _that.isActive,
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
            String name,
            String slug,
            String addressLine,
            String zone,
            double latitude,
            double longitude,
            List<String> supportedSports,
            bool isActive,
            @TimestampDateTimeConverter() DateTime createdAt,
            @TimestampDateTimeConverter() DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VenueDto():
        return $default(
            _that.id,
            _that.name,
            _that.slug,
            _that.addressLine,
            _that.zone,
            _that.latitude,
            _that.longitude,
            _that.supportedSports,
            _that.isActive,
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
            String name,
            String slug,
            String addressLine,
            String zone,
            double latitude,
            double longitude,
            List<String> supportedSports,
            bool isActive,
            @TimestampDateTimeConverter() DateTime createdAt,
            @TimestampDateTimeConverter() DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VenueDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.slug,
            _that.addressLine,
            _that.zone,
            _that.latitude,
            _that.longitude,
            _that.supportedSports,
            _that.isActive,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VenueDto extends VenueDto {
  const _VenueDto(
      {required this.id,
      required this.name,
      required this.slug,
      required this.addressLine,
      required this.zone,
      required this.latitude,
      required this.longitude,
      required final List<String> supportedSports,
      required this.isActive,
      @TimestampDateTimeConverter() required this.createdAt,
      @TimestampDateTimeConverter() required this.updatedAt})
      : _supportedSports = supportedSports,
        super._();
  factory _VenueDto.fromJson(Map<String, dynamic> json) =>
      _$VenueDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String addressLine;
  @override
  final String zone;
  @override
  final double latitude;
  @override
  final double longitude;
  final List<String> _supportedSports;
  @override
  List<String> get supportedSports {
    if (_supportedSports is EqualUnmodifiableListView) return _supportedSports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedSports);
  }

  @override
  final bool isActive;
  @override
  @TimestampDateTimeConverter()
  final DateTime createdAt;
  @override
  @TimestampDateTimeConverter()
  final DateTime updatedAt;

  /// Create a copy of VenueDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VenueDtoCopyWith<_VenueDto> get copyWith =>
      __$VenueDtoCopyWithImpl<_VenueDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VenueDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VenueDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.addressLine, addressLine) ||
                other.addressLine == addressLine) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality()
                .equals(other._supportedSports, _supportedSports) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
      name,
      slug,
      addressLine,
      zone,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(_supportedSports),
      isActive,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'VenueDto(id: $id, name: $name, slug: $slug, addressLine: $addressLine, zone: $zone, latitude: $latitude, longitude: $longitude, supportedSports: $supportedSports, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$VenueDtoCopyWith<$Res>
    implements $VenueDtoCopyWith<$Res> {
  factory _$VenueDtoCopyWith(_VenueDto value, $Res Function(_VenueDto) _then) =
      __$VenueDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String addressLine,
      String zone,
      double latitude,
      double longitude,
      List<String> supportedSports,
      bool isActive,
      @TimestampDateTimeConverter() DateTime createdAt,
      @TimestampDateTimeConverter() DateTime updatedAt});
}

/// @nodoc
class __$VenueDtoCopyWithImpl<$Res> implements _$VenueDtoCopyWith<$Res> {
  __$VenueDtoCopyWithImpl(this._self, this._then);

  final _VenueDto _self;
  final $Res Function(_VenueDto) _then;

  /// Create a copy of VenueDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? addressLine = null,
    Object? zone = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? supportedSports = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_VenueDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine: null == addressLine
          ? _self.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      zone: null == zone
          ? _self.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      supportedSports: null == supportedSports
          ? _self._supportedSports
          : supportedSports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
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
