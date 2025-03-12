// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_edukasi_video_main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CEdukasiVideoMainState {
  Status get status => throw _privateConstructorUsedError;
  num get offset => throw _privateConstructorUsedError;
  num get limit => throw _privateConstructorUsedError;
  List<EdukasiVideoCategory> get data => throw _privateConstructorUsedError;

  /// Create a copy of CEdukasiVideoMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CEdukasiVideoMainStateCopyWith<CEdukasiVideoMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CEdukasiVideoMainStateCopyWith<$Res> {
  factory $CEdukasiVideoMainStateCopyWith(CEdukasiVideoMainState value,
          $Res Function(CEdukasiVideoMainState) then) =
      _$CEdukasiVideoMainStateCopyWithImpl<$Res, CEdukasiVideoMainState>;
  @useResult
  $Res call(
      {Status status, num offset, num limit, List<EdukasiVideoCategory> data});
}

/// @nodoc
class _$CEdukasiVideoMainStateCopyWithImpl<$Res,
        $Val extends CEdukasiVideoMainState>
    implements $CEdukasiVideoMainStateCopyWith<$Res> {
  _$CEdukasiVideoMainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CEdukasiVideoMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offset = null,
    Object? limit = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EdukasiVideoCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CEdukasiVideoMainStateImplCopyWith<$Res>
    implements $CEdukasiVideoMainStateCopyWith<$Res> {
  factory _$$CEdukasiVideoMainStateImplCopyWith(
          _$CEdukasiVideoMainStateImpl value,
          $Res Function(_$CEdukasiVideoMainStateImpl) then) =
      __$$CEdukasiVideoMainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status, num offset, num limit, List<EdukasiVideoCategory> data});
}

/// @nodoc
class __$$CEdukasiVideoMainStateImplCopyWithImpl<$Res>
    extends _$CEdukasiVideoMainStateCopyWithImpl<$Res,
        _$CEdukasiVideoMainStateImpl>
    implements _$$CEdukasiVideoMainStateImplCopyWith<$Res> {
  __$$CEdukasiVideoMainStateImplCopyWithImpl(
      _$CEdukasiVideoMainStateImpl _value,
      $Res Function(_$CEdukasiVideoMainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CEdukasiVideoMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offset = null,
    Object? limit = null,
    Object? data = null,
  }) {
    return _then(_$CEdukasiVideoMainStateImpl(
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
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EdukasiVideoCategory>,
    ));
  }
}

/// @nodoc

class _$CEdukasiVideoMainStateImpl implements _CEdukasiVideoMainState {
  const _$CEdukasiVideoMainStateImpl(
      {this.status = const Status.initial(),
      this.offset = 0,
      this.limit = 10,
      final List<EdukasiVideoCategory> data = const []})
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
  final List<EdukasiVideoCategory> _data;
  @override
  @JsonKey()
  List<EdukasiVideoCategory> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CEdukasiVideoMainState(status: $status, offset: $offset, limit: $limit, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CEdukasiVideoMainStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, offset, limit,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of CEdukasiVideoMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CEdukasiVideoMainStateImplCopyWith<_$CEdukasiVideoMainStateImpl>
      get copyWith => __$$CEdukasiVideoMainStateImplCopyWithImpl<
          _$CEdukasiVideoMainStateImpl>(this, _$identity);
}

abstract class _CEdukasiVideoMainState implements CEdukasiVideoMainState {
  const factory _CEdukasiVideoMainState(
      {final Status status,
      final num offset,
      final num limit,
      final List<EdukasiVideoCategory> data}) = _$CEdukasiVideoMainStateImpl;

  @override
  Status get status;
  @override
  num get offset;
  @override
  num get limit;
  @override
  List<EdukasiVideoCategory> get data;

  /// Create a copy of CEdukasiVideoMainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CEdukasiVideoMainStateImplCopyWith<_$CEdukasiVideoMainStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
