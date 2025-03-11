// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CRegisterState {
  Status get status => throw _privateConstructorUsedError;
  XFile? get photo => throw _privateConstructorUsedError;

  /// Create a copy of CRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CRegisterStateCopyWith<CRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CRegisterStateCopyWith<$Res> {
  factory $CRegisterStateCopyWith(
          CRegisterState value, $Res Function(CRegisterState) then) =
      _$CRegisterStateCopyWithImpl<$Res, CRegisterState>;
  @useResult
  $Res call({Status status, XFile? photo});
}

/// @nodoc
class _$CRegisterStateCopyWithImpl<$Res, $Val extends CRegisterState>
    implements $CRegisterStateCopyWith<$Res> {
  _$CRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CRegisterState
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
abstract class _$$CRegisterStateImplCopyWith<$Res>
    implements $CRegisterStateCopyWith<$Res> {
  factory _$$CRegisterStateImplCopyWith(_$CRegisterStateImpl value,
          $Res Function(_$CRegisterStateImpl) then) =
      __$$CRegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, XFile? photo});
}

/// @nodoc
class __$$CRegisterStateImplCopyWithImpl<$Res>
    extends _$CRegisterStateCopyWithImpl<$Res, _$CRegisterStateImpl>
    implements _$$CRegisterStateImplCopyWith<$Res> {
  __$$CRegisterStateImplCopyWithImpl(
      _$CRegisterStateImpl _value, $Res Function(_$CRegisterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? photo = freezed,
  }) {
    return _then(_$CRegisterStateImpl(
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

class _$CRegisterStateImpl implements _CRegisterState {
  const _$CRegisterStateImpl(
      {this.status = const Status.initial(), this.photo});

  @override
  @JsonKey()
  final Status status;
  @override
  final XFile? photo;

  @override
  String toString() {
    return 'CRegisterState(status: $status, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CRegisterStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, photo);

  /// Create a copy of CRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CRegisterStateImplCopyWith<_$CRegisterStateImpl> get copyWith =>
      __$$CRegisterStateImplCopyWithImpl<_$CRegisterStateImpl>(
          this, _$identity);
}

abstract class _CRegisterState implements CRegisterState {
  const factory _CRegisterState({final Status status, final XFile? photo}) =
      _$CRegisterStateImpl;

  @override
  Status get status;
  @override
  XFile? get photo;

  /// Create a copy of CRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CRegisterStateImplCopyWith<_$CRegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
