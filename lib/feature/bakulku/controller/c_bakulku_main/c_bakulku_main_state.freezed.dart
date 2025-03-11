// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_bakulku_main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CBakulkuMainState {
  Status get status => throw _privateConstructorUsedError;
  num get offset => throw _privateConstructorUsedError;
  num get limit => throw _privateConstructorUsedError;
  ProductCategory get category => throw _privateConstructorUsedError;
  List<ProductModel> get data => throw _privateConstructorUsedError;

  /// Create a copy of CBakulkuMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CBakulkuMainStateCopyWith<CBakulkuMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CBakulkuMainStateCopyWith<$Res> {
  factory $CBakulkuMainStateCopyWith(
          CBakulkuMainState value, $Res Function(CBakulkuMainState) then) =
      _$CBakulkuMainStateCopyWithImpl<$Res, CBakulkuMainState>;
  @useResult
  $Res call(
      {Status status,
      num offset,
      num limit,
      ProductCategory category,
      List<ProductModel> data});
}

/// @nodoc
class _$CBakulkuMainStateCopyWithImpl<$Res, $Val extends CBakulkuMainState>
    implements $CBakulkuMainStateCopyWith<$Res> {
  _$CBakulkuMainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CBakulkuMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offset = null,
    Object? limit = null,
    Object? category = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as num,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as num,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CBakulkuMainStateImplCopyWith<$Res>
    implements $CBakulkuMainStateCopyWith<$Res> {
  factory _$$CBakulkuMainStateImplCopyWith(_$CBakulkuMainStateImpl value,
          $Res Function(_$CBakulkuMainStateImpl) then) =
      __$$CBakulkuMainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      num offset,
      num limit,
      ProductCategory category,
      List<ProductModel> data});
}

/// @nodoc
class __$$CBakulkuMainStateImplCopyWithImpl<$Res>
    extends _$CBakulkuMainStateCopyWithImpl<$Res, _$CBakulkuMainStateImpl>
    implements _$$CBakulkuMainStateImplCopyWith<$Res> {
  __$$CBakulkuMainStateImplCopyWithImpl(_$CBakulkuMainStateImpl _value,
      $Res Function(_$CBakulkuMainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CBakulkuMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offset = null,
    Object? limit = null,
    Object? category = null,
    Object? data = null,
  }) {
    return _then(_$CBakulkuMainStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as num,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as num,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$CBakulkuMainStateImpl implements _CBakulkuMainState {
  const _$CBakulkuMainStateImpl(
      {this.status = const Status.initial(),
      this.offset = 0,
      this.limit = 10,
      this.category = ProductCategory.buah,
      final List<ProductModel> data = const []})
      : _data = data;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final num offset;
  @override
  @JsonKey()
  final num limit;
  @override
  @JsonKey()
  final ProductCategory category;
  final List<ProductModel> _data;
  @override
  @JsonKey()
  List<ProductModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CBakulkuMainState(status: $status, offset: $offset, limit: $limit, category: $category, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CBakulkuMainStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, offset, limit, category,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of CBakulkuMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CBakulkuMainStateImplCopyWith<_$CBakulkuMainStateImpl> get copyWith =>
      __$$CBakulkuMainStateImplCopyWithImpl<_$CBakulkuMainStateImpl>(
          this, _$identity);
}

abstract class _CBakulkuMainState implements CBakulkuMainState {
  const factory _CBakulkuMainState(
      {final Status status,
      final num offset,
      final num limit,
      final ProductCategory category,
      final List<ProductModel> data}) = _$CBakulkuMainStateImpl;

  @override
  Status get status;
  @override
  num get offset;
  @override
  num get limit;
  @override
  ProductCategory get category;
  @override
  List<ProductModel> get data;

  /// Create a copy of CBakulkuMainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CBakulkuMainStateImplCopyWith<_$CBakulkuMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
