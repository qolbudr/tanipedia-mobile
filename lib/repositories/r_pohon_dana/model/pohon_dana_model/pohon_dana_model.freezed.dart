// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pohon_dana_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PohonDanaModel _$PohonDanaModelFromJson(Map<String, dynamic> json) {
  return _PohonDanaModel.fromJson(json);
}

/// @nodoc
mixin _$PohonDanaModel {
  num? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PohonDanaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PohonDanaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PohonDanaModelCopyWith<PohonDanaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PohonDanaModelCopyWith<$Res> {
  factory $PohonDanaModelCopyWith(
          PohonDanaModel value, $Res Function(PohonDanaModel) then) =
      _$PohonDanaModelCopyWithImpl<$Res, PohonDanaModel>;
  @useResult
  $Res call(
      {num? id,
      String? title,
      String? description,
      String? image,
      String? link,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$PohonDanaModelCopyWithImpl<$Res, $Val extends PohonDanaModel>
    implements $PohonDanaModelCopyWith<$Res> {
  _$PohonDanaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PohonDanaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PohonDanaModelImplCopyWith<$Res>
    implements $PohonDanaModelCopyWith<$Res> {
  factory _$$PohonDanaModelImplCopyWith(_$PohonDanaModelImpl value,
          $Res Function(_$PohonDanaModelImpl) then) =
      __$$PohonDanaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      String? title,
      String? description,
      String? image,
      String? link,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$PohonDanaModelImplCopyWithImpl<$Res>
    extends _$PohonDanaModelCopyWithImpl<$Res, _$PohonDanaModelImpl>
    implements _$$PohonDanaModelImplCopyWith<$Res> {
  __$$PohonDanaModelImplCopyWithImpl(
      _$PohonDanaModelImpl _value, $Res Function(_$PohonDanaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PohonDanaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PohonDanaModelImpl(
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$PohonDanaModelImpl implements _PohonDanaModel {
  const _$PohonDanaModelImpl(
      {this.id,
      this.title,
      this.description,
      this.image,
      this.link,
      this.createdAt,
      this.updatedAt});

  factory _$PohonDanaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PohonDanaModelImplFromJson(json);

  @override
  final num? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? link;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PohonDanaModel(id: $id, title: $title, description: $description, image: $image, link: $link, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PohonDanaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, image, link, createdAt, updatedAt);

  /// Create a copy of PohonDanaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PohonDanaModelImplCopyWith<_$PohonDanaModelImpl> get copyWith =>
      __$$PohonDanaModelImplCopyWithImpl<_$PohonDanaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PohonDanaModelImplToJson(
      this,
    );
  }
}

abstract class _PohonDanaModel implements PohonDanaModel {
  const factory _PohonDanaModel(
      {final num? id,
      final String? title,
      final String? description,
      final String? image,
      final String? link,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$PohonDanaModelImpl;

  factory _PohonDanaModel.fromJson(Map<String, dynamic> json) =
      _$PohonDanaModelImpl.fromJson;

  @override
  num? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get link;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of PohonDanaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PohonDanaModelImplCopyWith<_$PohonDanaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
