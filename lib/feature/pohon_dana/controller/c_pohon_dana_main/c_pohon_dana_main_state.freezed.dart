// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_pohon_dana_main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CPohonDanaMainState {
  Status get status => throw _privateConstructorUsedError;
  num get offset => throw _privateConstructorUsedError;
  num get limit => throw _privateConstructorUsedError;
  num get count => throw _privateConstructorUsedError;
  List<PohonDanaModel> get data => throw _privateConstructorUsedError;

  /// Create a copy of CPohonDanaMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CPohonDanaMainStateCopyWith<CPohonDanaMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPohonDanaMainStateCopyWith<$Res> {
  factory $CPohonDanaMainStateCopyWith(
          CPohonDanaMainState value, $Res Function(CPohonDanaMainState) then) =
      _$CPohonDanaMainStateCopyWithImpl<$Res, CPohonDanaMainState>;
  @useResult
  $Res call(
      {Status status,
      num offset,
      num limit,
      num count,
      List<PohonDanaModel> data});
}

/// @nodoc
class _$CPohonDanaMainStateCopyWithImpl<$Res, $Val extends CPohonDanaMainState>
    implements $CPohonDanaMainStateCopyWith<$Res> {
  _$CPohonDanaMainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CPohonDanaMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offset = null,
    Object? limit = null,
    Object? count = null,
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as num,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PohonDanaModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CPohonDanaMainStateImplCopyWith<$Res>
    implements $CPohonDanaMainStateCopyWith<$Res> {
  factory _$$CPohonDanaMainStateImplCopyWith(_$CPohonDanaMainStateImpl value,
          $Res Function(_$CPohonDanaMainStateImpl) then) =
      __$$CPohonDanaMainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      num offset,
      num limit,
      num count,
      List<PohonDanaModel> data});
}

/// @nodoc
class __$$CPohonDanaMainStateImplCopyWithImpl<$Res>
    extends _$CPohonDanaMainStateCopyWithImpl<$Res, _$CPohonDanaMainStateImpl>
    implements _$$CPohonDanaMainStateImplCopyWith<$Res> {
  __$$CPohonDanaMainStateImplCopyWithImpl(_$CPohonDanaMainStateImpl _value,
      $Res Function(_$CPohonDanaMainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CPohonDanaMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offset = null,
    Object? limit = null,
    Object? count = null,
    Object? data = null,
  }) {
    return _then(_$CPohonDanaMainStateImpl(
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as num,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PohonDanaModel>,
    ));
  }
}

/// @nodoc

class _$CPohonDanaMainStateImpl implements _CPohonDanaMainState {
  const _$CPohonDanaMainStateImpl(
      {this.status = const Status.initial(),
      this.offset = 0,
      this.limit = 10,
      this.count = 0,
      final List<PohonDanaModel> data = const []})
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
  final num count;
  final List<PohonDanaModel> _data;
  @override
  @JsonKey()
  List<PohonDanaModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CPohonDanaMainState(status: $status, offset: $offset, limit: $limit, count: $count, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CPohonDanaMainStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, offset, limit, count,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of CPohonDanaMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CPohonDanaMainStateImplCopyWith<_$CPohonDanaMainStateImpl> get copyWith =>
      __$$CPohonDanaMainStateImplCopyWithImpl<_$CPohonDanaMainStateImpl>(
          this, _$identity);
}

abstract class _CPohonDanaMainState implements CPohonDanaMainState {
  const factory _CPohonDanaMainState(
      {final Status status,
      final num offset,
      final num limit,
      final num count,
      final List<PohonDanaModel> data}) = _$CPohonDanaMainStateImpl;

  @override
  Status get status;
  @override
  num get offset;
  @override
  num get limit;
  @override
  num get count;
  @override
  List<PohonDanaModel> get data;

  /// Create a copy of CPohonDanaMainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CPohonDanaMainStateImplCopyWith<_$CPohonDanaMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
