// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_bakulku_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CBakulkuDetailState {
  Status get status => throw _privateConstructorUsedError;
  ProductModel? get data => throw _privateConstructorUsedError;
  num get quantity => throw _privateConstructorUsedError;

  /// Create a copy of CBakulkuDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CBakulkuDetailStateCopyWith<CBakulkuDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CBakulkuDetailStateCopyWith<$Res> {
  factory $CBakulkuDetailStateCopyWith(
          CBakulkuDetailState value, $Res Function(CBakulkuDetailState) then) =
      _$CBakulkuDetailStateCopyWithImpl<$Res, CBakulkuDetailState>;
  @useResult
  $Res call({Status status, ProductModel? data, num quantity});

  $ProductModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CBakulkuDetailStateCopyWithImpl<$Res, $Val extends CBakulkuDetailState>
    implements $CBakulkuDetailStateCopyWith<$Res> {
  _$CBakulkuDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CBakulkuDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  /// Create a copy of CBakulkuDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CBakulkuDetailStateImplCopyWith<$Res>
    implements $CBakulkuDetailStateCopyWith<$Res> {
  factory _$$CBakulkuDetailStateImplCopyWith(_$CBakulkuDetailStateImpl value,
          $Res Function(_$CBakulkuDetailStateImpl) then) =
      __$$CBakulkuDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, ProductModel? data, num quantity});

  @override
  $ProductModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CBakulkuDetailStateImplCopyWithImpl<$Res>
    extends _$CBakulkuDetailStateCopyWithImpl<$Res, _$CBakulkuDetailStateImpl>
    implements _$$CBakulkuDetailStateImplCopyWith<$Res> {
  __$$CBakulkuDetailStateImplCopyWithImpl(_$CBakulkuDetailStateImpl _value,
      $Res Function(_$CBakulkuDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CBakulkuDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? quantity = null,
  }) {
    return _then(_$CBakulkuDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$CBakulkuDetailStateImpl implements _CBakulkuDetailState {
  const _$CBakulkuDetailStateImpl(
      {this.status = const Status.initial(), this.data, this.quantity = 0});

  @override
  @JsonKey()
  final Status status;
  @override
  final ProductModel? data;
  @override
  @JsonKey()
  final num quantity;

  @override
  String toString() {
    return 'CBakulkuDetailState(status: $status, data: $data, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CBakulkuDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data, quantity);

  /// Create a copy of CBakulkuDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CBakulkuDetailStateImplCopyWith<_$CBakulkuDetailStateImpl> get copyWith =>
      __$$CBakulkuDetailStateImplCopyWithImpl<_$CBakulkuDetailStateImpl>(
          this, _$identity);
}

abstract class _CBakulkuDetailState implements CBakulkuDetailState {
  const factory _CBakulkuDetailState(
      {final Status status,
      final ProductModel? data,
      final num quantity}) = _$CBakulkuDetailStateImpl;

  @override
  Status get status;
  @override
  ProductModel? get data;
  @override
  num get quantity;

  /// Create a copy of CBakulkuDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CBakulkuDetailStateImplCopyWith<_$CBakulkuDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
