// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$COnBoardingState {
  int get tabIndex => throw _privateConstructorUsedError;

  /// Create a copy of COnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $COnBoardingStateCopyWith<COnBoardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $COnBoardingStateCopyWith<$Res> {
  factory $COnBoardingStateCopyWith(
          COnBoardingState value, $Res Function(COnBoardingState) then) =
      _$COnBoardingStateCopyWithImpl<$Res, COnBoardingState>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class _$COnBoardingStateCopyWithImpl<$Res, $Val extends COnBoardingState>
    implements $COnBoardingStateCopyWith<$Res> {
  _$COnBoardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of COnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$COnBoardingStateImplCopyWith<$Res>
    implements $COnBoardingStateCopyWith<$Res> {
  factory _$$COnBoardingStateImplCopyWith(_$COnBoardingStateImpl value,
          $Res Function(_$COnBoardingStateImpl) then) =
      __$$COnBoardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$COnBoardingStateImplCopyWithImpl<$Res>
    extends _$COnBoardingStateCopyWithImpl<$Res, _$COnBoardingStateImpl>
    implements _$$COnBoardingStateImplCopyWith<$Res> {
  __$$COnBoardingStateImplCopyWithImpl(_$COnBoardingStateImpl _value,
      $Res Function(_$COnBoardingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of COnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$COnBoardingStateImpl(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$COnBoardingStateImpl implements _COnBoardingState {
  const _$COnBoardingStateImpl({this.tabIndex = 0});

  @override
  @JsonKey()
  final int tabIndex;

  @override
  String toString() {
    return 'COnBoardingState(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$COnBoardingStateImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  /// Create a copy of COnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$COnBoardingStateImplCopyWith<_$COnBoardingStateImpl> get copyWith =>
      __$$COnBoardingStateImplCopyWithImpl<_$COnBoardingStateImpl>(
          this, _$identity);
}

abstract class _COnBoardingState implements COnBoardingState {
  const factory _COnBoardingState({final int tabIndex}) =
      _$COnBoardingStateImpl;

  @override
  int get tabIndex;

  /// Create a copy of COnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$COnBoardingStateImplCopyWith<_$COnBoardingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
