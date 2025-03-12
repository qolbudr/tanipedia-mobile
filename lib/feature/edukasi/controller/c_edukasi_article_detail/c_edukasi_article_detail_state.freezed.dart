// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_edukasi_article_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CEdukasiArticleDetailState {
  Status get status => throw _privateConstructorUsedError;
  EdukasiArticle? get data => throw _privateConstructorUsedError;

  /// Create a copy of CEdukasiArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CEdukasiArticleDetailStateCopyWith<CEdukasiArticleDetailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CEdukasiArticleDetailStateCopyWith<$Res> {
  factory $CEdukasiArticleDetailStateCopyWith(CEdukasiArticleDetailState value,
          $Res Function(CEdukasiArticleDetailState) then) =
      _$CEdukasiArticleDetailStateCopyWithImpl<$Res,
          CEdukasiArticleDetailState>;
  @useResult
  $Res call({Status status, EdukasiArticle? data});

  $EdukasiArticleCopyWith<$Res>? get data;
}

/// @nodoc
class _$CEdukasiArticleDetailStateCopyWithImpl<$Res,
        $Val extends CEdukasiArticleDetailState>
    implements $CEdukasiArticleDetailStateCopyWith<$Res> {
  _$CEdukasiArticleDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CEdukasiArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EdukasiArticle?,
    ) as $Val);
  }

  /// Create a copy of CEdukasiArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EdukasiArticleCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $EdukasiArticleCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CEdukasiArticleDetailStateImplCopyWith<$Res>
    implements $CEdukasiArticleDetailStateCopyWith<$Res> {
  factory _$$CEdukasiArticleDetailStateImplCopyWith(
          _$CEdukasiArticleDetailStateImpl value,
          $Res Function(_$CEdukasiArticleDetailStateImpl) then) =
      __$$CEdukasiArticleDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, EdukasiArticle? data});

  @override
  $EdukasiArticleCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CEdukasiArticleDetailStateImplCopyWithImpl<$Res>
    extends _$CEdukasiArticleDetailStateCopyWithImpl<$Res,
        _$CEdukasiArticleDetailStateImpl>
    implements _$$CEdukasiArticleDetailStateImplCopyWith<$Res> {
  __$$CEdukasiArticleDetailStateImplCopyWithImpl(
      _$CEdukasiArticleDetailStateImpl _value,
      $Res Function(_$CEdukasiArticleDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CEdukasiArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
  }) {
    return _then(_$CEdukasiArticleDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EdukasiArticle?,
    ));
  }
}

/// @nodoc

class _$CEdukasiArticleDetailStateImpl implements _CEdukasiArticleDetailState {
  const _$CEdukasiArticleDetailStateImpl(
      {this.status = const Status.initial(), this.data});

  @override
  @JsonKey()
  final Status status;
  @override
  final EdukasiArticle? data;

  @override
  String toString() {
    return 'CEdukasiArticleDetailState(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CEdukasiArticleDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of CEdukasiArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CEdukasiArticleDetailStateImplCopyWith<_$CEdukasiArticleDetailStateImpl>
      get copyWith => __$$CEdukasiArticleDetailStateImplCopyWithImpl<
          _$CEdukasiArticleDetailStateImpl>(this, _$identity);
}

abstract class _CEdukasiArticleDetailState
    implements CEdukasiArticleDetailState {
  const factory _CEdukasiArticleDetailState(
      {final Status status,
      final EdukasiArticle? data}) = _$CEdukasiArticleDetailStateImpl;

  @override
  Status get status;
  @override
  EdukasiArticle? get data;

  /// Create a copy of CEdukasiArticleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CEdukasiArticleDetailStateImplCopyWith<_$CEdukasiArticleDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
