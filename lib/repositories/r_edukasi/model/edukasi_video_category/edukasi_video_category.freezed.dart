// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edukasi_video_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EdukasiVideoCategory _$EdukasiVideoCategoryFromJson(Map<String, dynamic> json) {
  return _EdukasiVideoCategory.fromJson(json);
}

/// @nodoc
mixin _$EdukasiVideoCategory {
  num? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this EdukasiVideoCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EdukasiVideoCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EdukasiVideoCategoryCopyWith<EdukasiVideoCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdukasiVideoCategoryCopyWith<$Res> {
  factory $EdukasiVideoCategoryCopyWith(EdukasiVideoCategory value,
          $Res Function(EdukasiVideoCategory) then) =
      _$EdukasiVideoCategoryCopyWithImpl<$Res, EdukasiVideoCategory>;
  @useResult
  $Res call(
      {num? id,
      String? title,
      String? description,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$EdukasiVideoCategoryCopyWithImpl<$Res,
        $Val extends EdukasiVideoCategory>
    implements $EdukasiVideoCategoryCopyWith<$Res> {
  _$EdukasiVideoCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EdukasiVideoCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
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
abstract class _$$EdukasiVideoCategoryImplCopyWith<$Res>
    implements $EdukasiVideoCategoryCopyWith<$Res> {
  factory _$$EdukasiVideoCategoryImplCopyWith(_$EdukasiVideoCategoryImpl value,
          $Res Function(_$EdukasiVideoCategoryImpl) then) =
      __$$EdukasiVideoCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      String? title,
      String? description,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$EdukasiVideoCategoryImplCopyWithImpl<$Res>
    extends _$EdukasiVideoCategoryCopyWithImpl<$Res, _$EdukasiVideoCategoryImpl>
    implements _$$EdukasiVideoCategoryImplCopyWith<$Res> {
  __$$EdukasiVideoCategoryImplCopyWithImpl(_$EdukasiVideoCategoryImpl _value,
      $Res Function(_$EdukasiVideoCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of EdukasiVideoCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EdukasiVideoCategoryImpl(
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
class _$EdukasiVideoCategoryImpl implements _EdukasiVideoCategory {
  const _$EdukasiVideoCategoryImpl(
      {this.id, this.title, this.description, this.createdAt, this.updatedAt});

  factory _$EdukasiVideoCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdukasiVideoCategoryImplFromJson(json);

  @override
  final num? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'EdukasiVideoCategory(id: $id, title: $title, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdukasiVideoCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, createdAt, updatedAt);

  /// Create a copy of EdukasiVideoCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EdukasiVideoCategoryImplCopyWith<_$EdukasiVideoCategoryImpl>
      get copyWith =>
          __$$EdukasiVideoCategoryImplCopyWithImpl<_$EdukasiVideoCategoryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdukasiVideoCategoryImplToJson(
      this,
    );
  }
}

abstract class _EdukasiVideoCategory implements EdukasiVideoCategory {
  const factory _EdukasiVideoCategory(
      {final num? id,
      final String? title,
      final String? description,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$EdukasiVideoCategoryImpl;

  factory _EdukasiVideoCategory.fromJson(Map<String, dynamic> json) =
      _$EdukasiVideoCategoryImpl.fromJson;

  @override
  num? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of EdukasiVideoCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EdukasiVideoCategoryImplCopyWith<_$EdukasiVideoCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
