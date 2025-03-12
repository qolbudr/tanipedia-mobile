// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edukasi_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EdukasiArticle _$EdukasiArticleFromJson(Map<String, dynamic> json) {
  return _EdukasiArticle.fromJson(json);
}

/// @nodoc
mixin _$EdukasiArticle {
  num? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this EdukasiArticle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EdukasiArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EdukasiArticleCopyWith<EdukasiArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdukasiArticleCopyWith<$Res> {
  factory $EdukasiArticleCopyWith(
          EdukasiArticle value, $Res Function(EdukasiArticle) then) =
      _$EdukasiArticleCopyWithImpl<$Res, EdukasiArticle>;
  @useResult
  $Res call(
      {num? id,
      String? title,
      String? description,
      String? content,
      String? image,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$EdukasiArticleCopyWithImpl<$Res, $Val extends EdukasiArticle>
    implements $EdukasiArticleCopyWith<$Res> {
  _$EdukasiArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EdukasiArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? image = freezed,
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
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EdukasiArticleImplCopyWith<$Res>
    implements $EdukasiArticleCopyWith<$Res> {
  factory _$$EdukasiArticleImplCopyWith(_$EdukasiArticleImpl value,
          $Res Function(_$EdukasiArticleImpl) then) =
      __$$EdukasiArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      String? title,
      String? description,
      String? content,
      String? image,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$EdukasiArticleImplCopyWithImpl<$Res>
    extends _$EdukasiArticleCopyWithImpl<$Res, _$EdukasiArticleImpl>
    implements _$$EdukasiArticleImplCopyWith<$Res> {
  __$$EdukasiArticleImplCopyWithImpl(
      _$EdukasiArticleImpl _value, $Res Function(_$EdukasiArticleImpl) _then)
      : super(_value, _then);

  /// Create a copy of EdukasiArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EdukasiArticleImpl(
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
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$EdukasiArticleImpl implements _EdukasiArticle {
  const _$EdukasiArticleImpl(
      {this.id,
      this.title,
      this.description,
      this.content,
      this.image,
      this.createdAt,
      this.updatedAt});

  factory _$EdukasiArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdukasiArticleImplFromJson(json);

  @override
  final num? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? content;
  @override
  final String? image;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'EdukasiArticle(id: $id, title: $title, description: $description, content: $content, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdukasiArticleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, content,
      image, createdAt, updatedAt);

  /// Create a copy of EdukasiArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EdukasiArticleImplCopyWith<_$EdukasiArticleImpl> get copyWith =>
      __$$EdukasiArticleImplCopyWithImpl<_$EdukasiArticleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdukasiArticleImplToJson(
      this,
    );
  }
}

abstract class _EdukasiArticle implements EdukasiArticle {
  const factory _EdukasiArticle(
      {final num? id,
      final String? title,
      final String? description,
      final String? content,
      final String? image,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$EdukasiArticleImpl;

  factory _EdukasiArticle.fromJson(Map<String, dynamic> json) =
      _$EdukasiArticleImpl.fromJson;

  @override
  num? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get content;
  @override
  String? get image;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of EdukasiArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EdukasiArticleImplCopyWith<_$EdukasiArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
