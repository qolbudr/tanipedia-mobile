// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_profile_main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CProfileMainState {
  Status get status => throw _privateConstructorUsedError;
  XFile? get photo => throw _privateConstructorUsedError;

  /// Create a copy of CProfileMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CProfileMainStateCopyWith<CProfileMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CProfileMainStateCopyWith<$Res> {
  factory $CProfileMainStateCopyWith(
          CProfileMainState value, $Res Function(CProfileMainState) then) =
      _$CProfileMainStateCopyWithImpl<$Res, CProfileMainState>;
  @useResult
  $Res call({Status status, XFile? photo});
}

/// @nodoc
class _$CProfileMainStateCopyWithImpl<$Res, $Val extends CProfileMainState>
    implements $CProfileMainStateCopyWith<$Res> {
  _$CProfileMainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CProfileMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CProfileMainStateImplCopyWith<$Res>
    implements $CProfileMainStateCopyWith<$Res> {
  factory _$$CProfileMainStateImplCopyWith(_$CProfileMainStateImpl value,
          $Res Function(_$CProfileMainStateImpl) then) =
      __$$CProfileMainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, XFile? photo});
}

/// @nodoc
class __$$CProfileMainStateImplCopyWithImpl<$Res>
    extends _$CProfileMainStateCopyWithImpl<$Res, _$CProfileMainStateImpl>
    implements _$$CProfileMainStateImplCopyWith<$Res> {
  __$$CProfileMainStateImplCopyWithImpl(_$CProfileMainStateImpl _value,
      $Res Function(_$CProfileMainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CProfileMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? photo = freezed,
  }) {
    return _then(_$CProfileMainStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$CProfileMainStateImpl implements _CProfileMainState {
  const _$CProfileMainStateImpl(
      {this.status = const Status.initial(), this.photo});

  @override
  @JsonKey()
  final Status status;
  @override
  final XFile? photo;

  @override
  String toString() {
    return 'CProfileMainState(status: $status, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CProfileMainStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, photo);

  /// Create a copy of CProfileMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CProfileMainStateImplCopyWith<_$CProfileMainStateImpl> get copyWith =>
      __$$CProfileMainStateImplCopyWithImpl<_$CProfileMainStateImpl>(
          this, _$identity);
}

abstract class _CProfileMainState implements CProfileMainState {
  const factory _CProfileMainState({final Status status, final XFile? photo}) =
      _$CProfileMainStateImpl;

  @override
  Status get status;
  @override
  XFile? get photo;

  /// Create a copy of CProfileMainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CProfileMainStateImplCopyWith<_$CProfileMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
