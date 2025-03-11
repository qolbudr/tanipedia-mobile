// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CLoginState {
  Status get status => throw _privateConstructorUsedError;

  /// Create a copy of CLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CLoginStateCopyWith<CLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CLoginStateCopyWith<$Res> {
  factory $CLoginStateCopyWith(
          CLoginState value, $Res Function(CLoginState) then) =
      _$CLoginStateCopyWithImpl<$Res, CLoginState>;
  @useResult
  $Res call({Status status});
}

/// @nodoc
class _$CLoginStateCopyWithImpl<$Res, $Val extends CLoginState>
    implements $CLoginStateCopyWith<$Res> {
  _$CLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CLoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CLoginStateImplCopyWith<$Res>
    implements $CLoginStateCopyWith<$Res> {
  factory _$$CLoginStateImplCopyWith(
          _$CLoginStateImpl value, $Res Function(_$CLoginStateImpl) then) =
      __$$CLoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status});
}

/// @nodoc
class __$$CLoginStateImplCopyWithImpl<$Res>
    extends _$CLoginStateCopyWithImpl<$Res, _$CLoginStateImpl>
    implements _$$CLoginStateImplCopyWith<$Res> {
  __$$CLoginStateImplCopyWithImpl(
      _$CLoginStateImpl _value, $Res Function(_$CLoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CLoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$CLoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$CLoginStateImpl implements _CLoginState {
  const _$CLoginStateImpl({this.status = const Status.initial()});

  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'CLoginState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CLoginStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of CLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CLoginStateImplCopyWith<_$CLoginStateImpl> get copyWith =>
      __$$CLoginStateImplCopyWithImpl<_$CLoginStateImpl>(this, _$identity);
}

abstract class _CLoginState implements CLoginState {
  const factory _CLoginState({final Status status}) = _$CLoginStateImpl;

  @override
  Status get status;

  /// Create a copy of CLoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CLoginStateImplCopyWith<_$CLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
