// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CMainState {
  int get tabIndex => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  /// Create a copy of CMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CMainStateCopyWith<CMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CMainStateCopyWith<$Res> {
  factory $CMainStateCopyWith(
          CMainState value, $Res Function(CMainState) then) =
      _$CMainStateCopyWithImpl<$Res, CMainState>;
  @useResult
  $Res call({int tabIndex, UserModel? user, String? token});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$CMainStateCopyWithImpl<$Res, $Val extends CMainState>
    implements $CMainStateCopyWith<$Res> {
  _$CMainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CMainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CMainStateImplCopyWith<$Res>
    implements $CMainStateCopyWith<$Res> {
  factory _$$CMainStateImplCopyWith(
          _$CMainStateImpl value, $Res Function(_$CMainStateImpl) then) =
      __$$CMainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex, UserModel? user, String? token});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CMainStateImplCopyWithImpl<$Res>
    extends _$CMainStateCopyWithImpl<$Res, _$CMainStateImpl>
    implements _$$CMainStateImplCopyWith<$Res> {
  __$$CMainStateImplCopyWithImpl(
      _$CMainStateImpl _value, $Res Function(_$CMainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_$CMainStateImpl(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CMainStateImpl implements _CMainState {
  const _$CMainStateImpl({this.tabIndex = 0, this.user, this.token});

  @override
  @JsonKey()
  final int tabIndex;
  @override
  final UserModel? user;
  @override
  final String? token;

  @override
  String toString() {
    return 'CMainState(tabIndex: $tabIndex, user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CMainStateImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex, user, token);

  /// Create a copy of CMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CMainStateImplCopyWith<_$CMainStateImpl> get copyWith =>
      __$$CMainStateImplCopyWithImpl<_$CMainStateImpl>(this, _$identity);
}

abstract class _CMainState implements CMainState {
  const factory _CMainState(
      {final int tabIndex,
      final UserModel? user,
      final String? token}) = _$CMainStateImpl;

  @override
  int get tabIndex;
  @override
  UserModel? get user;
  @override
  String? get token;

  /// Create a copy of CMainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CMainStateImplCopyWith<_$CMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
