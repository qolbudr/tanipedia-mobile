// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edukasi_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EdukasiVideo _$EdukasiVideoFromJson(Map<String, dynamic> json) {
  return _EdukasiVideo.fromJson(json);
}

/// @nodoc
mixin _$EdukasiVideo {
  num? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this EdukasiVideo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EdukasiVideo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EdukasiVideoCopyWith<EdukasiVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdukasiVideoCopyWith<$Res> {
  factory $EdukasiVideoCopyWith(
          EdukasiVideo value, $Res Function(EdukasiVideo) then) =
      _$EdukasiVideoCopyWithImpl<$Res, EdukasiVideo>;
  @useResult
  $Res call(
      {num? id,
      String? title,
      String? description,
      String? link,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$EdukasiVideoCopyWithImpl<$Res, $Val extends EdukasiVideo>
    implements $EdukasiVideoCopyWith<$Res> {
  _$EdukasiVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EdukasiVideo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EdukasiVideoImplCopyWith<$Res>
    implements $EdukasiVideoCopyWith<$Res> {
  factory _$$EdukasiVideoImplCopyWith(
          _$EdukasiVideoImpl value, $Res Function(_$EdukasiVideoImpl) then) =
      __$$EdukasiVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      String? title,
      String? description,
      String? link,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$EdukasiVideoImplCopyWithImpl<$Res>
    extends _$EdukasiVideoCopyWithImpl<$Res, _$EdukasiVideoImpl>
    implements _$$EdukasiVideoImplCopyWith<$Res> {
  __$$EdukasiVideoImplCopyWithImpl(
      _$EdukasiVideoImpl _value, $Res Function(_$EdukasiVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of EdukasiVideo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EdukasiVideoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EdukasiVideoImpl implements _EdukasiVideo {
  const _$EdukasiVideoImpl(
      {this.id,
      this.title,
      this.description,
      this.link,
      this.createdAt,
      this.updatedAt});

  factory _$EdukasiVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdukasiVideoImplFromJson(json);

  @override
  final num? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? link;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'EdukasiVideo(id: $id, title: $title, description: $description, link: $link, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdukasiVideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, link, createdAt, updatedAt);

  /// Create a copy of EdukasiVideo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EdukasiVideoImplCopyWith<_$EdukasiVideoImpl> get copyWith =>
      __$$EdukasiVideoImplCopyWithImpl<_$EdukasiVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdukasiVideoImplToJson(
      this,
    );
  }
}

abstract class _EdukasiVideo implements EdukasiVideo {
  const factory _EdukasiVideo(
      {final num? id,
      final String? title,
      final String? description,
      final String? link,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$EdukasiVideoImpl;

  factory _EdukasiVideo.fromJson(Map<String, dynamic> json) =
      _$EdukasiVideoImpl.fromJson;

  @override
  num? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get link;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of EdukasiVideo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EdukasiVideoImplCopyWith<_$EdukasiVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
