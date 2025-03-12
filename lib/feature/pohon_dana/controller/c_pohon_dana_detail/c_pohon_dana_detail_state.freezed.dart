// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_pohon_dana_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CPohonDanaDetailState {
  Status get status => throw _privateConstructorUsedError;
  PohonDanaModel? get data => throw _privateConstructorUsedError;

  /// Create a copy of CPohonDanaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CPohonDanaDetailStateCopyWith<CPohonDanaDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPohonDanaDetailStateCopyWith<$Res> {
  factory $CPohonDanaDetailStateCopyWith(CPohonDanaDetailState value,
          $Res Function(CPohonDanaDetailState) then) =
      _$CPohonDanaDetailStateCopyWithImpl<$Res, CPohonDanaDetailState>;
  @useResult
  $Res call({Status status, PohonDanaModel? data});

  $PohonDanaModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CPohonDanaDetailStateCopyWithImpl<$Res,
        $Val extends CPohonDanaDetailState>
    implements $CPohonDanaDetailStateCopyWith<$Res> {
  _$CPohonDanaDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CPohonDanaDetailState
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
              as PohonDanaModel?,
    ) as $Val);
  }

  /// Create a copy of CPohonDanaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PohonDanaModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PohonDanaModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CPohonDanaDetailStateImplCopyWith<$Res>
    implements $CPohonDanaDetailStateCopyWith<$Res> {
  factory _$$CPohonDanaDetailStateImplCopyWith(
          _$CPohonDanaDetailStateImpl value,
          $Res Function(_$CPohonDanaDetailStateImpl) then) =
      __$$CPohonDanaDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, PohonDanaModel? data});

  @override
  $PohonDanaModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CPohonDanaDetailStateImplCopyWithImpl<$Res>
    extends _$CPohonDanaDetailStateCopyWithImpl<$Res,
        _$CPohonDanaDetailStateImpl>
    implements _$$CPohonDanaDetailStateImplCopyWith<$Res> {
  __$$CPohonDanaDetailStateImplCopyWithImpl(_$CPohonDanaDetailStateImpl _value,
      $Res Function(_$CPohonDanaDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CPohonDanaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
  }) {
    return _then(_$CPohonDanaDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PohonDanaModel?,
    ));
  }
}

/// @nodoc

class _$CPohonDanaDetailStateImpl implements _CPohonDanaDetailState {
  const _$CPohonDanaDetailStateImpl(
      {this.status = const Status.initial(), this.data});

  @override
  @JsonKey()
  final Status status;
  @override
  final PohonDanaModel? data;

  @override
  String toString() {
    return 'CPohonDanaDetailState(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CPohonDanaDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of CPohonDanaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CPohonDanaDetailStateImplCopyWith<_$CPohonDanaDetailStateImpl>
      get copyWith => __$$CPohonDanaDetailStateImplCopyWithImpl<
          _$CPohonDanaDetailStateImpl>(this, _$identity);
}

abstract class _CPohonDanaDetailState implements CPohonDanaDetailState {
  const factory _CPohonDanaDetailState(
      {final Status status,
      final PohonDanaModel? data}) = _$CPohonDanaDetailStateImpl;

  @override
  Status get status;
  @override
  PohonDanaModel? get data;

  /// Create a copy of CPohonDanaDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CPohonDanaDetailStateImplCopyWith<_$CPohonDanaDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
