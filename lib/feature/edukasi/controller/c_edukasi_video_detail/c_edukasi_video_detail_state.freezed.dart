// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_edukasi_video_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CEdukasiVideoDetailState {
  Status get status => throw _privateConstructorUsedError;
  num get offset => throw _privateConstructorUsedError;
  num get limit => throw _privateConstructorUsedError;
  List<EdukasiVideo> get data => throw _privateConstructorUsedError;
  num? get activeIndex => throw _privateConstructorUsedError;

  /// Create a copy of CEdukasiVideoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CEdukasiVideoDetailStateCopyWith<CEdukasiVideoDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CEdukasiVideoDetailStateCopyWith<$Res> {
  factory $CEdukasiVideoDetailStateCopyWith(CEdukasiVideoDetailState value,
          $Res Function(CEdukasiVideoDetailState) then) =
      _$CEdukasiVideoDetailStateCopyWithImpl<$Res, CEdukasiVideoDetailState>;
  @useResult
  $Res call(
      {Status status,
      num offset,
      num limit,
      List<EdukasiVideo> data,
      num? activeIndex});
}

/// @nodoc
class _$CEdukasiVideoDetailStateCopyWithImpl<$Res,
        $Val extends CEdukasiVideoDetailState>
    implements $CEdukasiVideoDetailStateCopyWith<$Res> {
  _$CEdukasiVideoDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CEdukasiVideoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offset = null,
    Object? limit = null,
    Object? data = null,
    Object? activeIndex = freezed,
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
              as List<EdukasiVideo>,
      activeIndex: freezed == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CEdukasiVideoDetailStateImplCopyWith<$Res>
    implements $CEdukasiVideoDetailStateCopyWith<$Res> {
  factory _$$CEdukasiVideoDetailStateImplCopyWith(
          _$CEdukasiVideoDetailStateImpl value,
          $Res Function(_$CEdukasiVideoDetailStateImpl) then) =
      __$$CEdukasiVideoDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      num offset,
      num limit,
      List<EdukasiVideo> data,
      num? activeIndex});
}

/// @nodoc
class __$$CEdukasiVideoDetailStateImplCopyWithImpl<$Res>
    extends _$CEdukasiVideoDetailStateCopyWithImpl<$Res,
        _$CEdukasiVideoDetailStateImpl>
    implements _$$CEdukasiVideoDetailStateImplCopyWith<$Res> {
  __$$CEdukasiVideoDetailStateImplCopyWithImpl(
      _$CEdukasiVideoDetailStateImpl _value,
      $Res Function(_$CEdukasiVideoDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CEdukasiVideoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offset = null,
    Object? limit = null,
    Object? data = null,
    Object? activeIndex = freezed,
  }) {
    return _then(_$CEdukasiVideoDetailStateImpl(
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
              as List<EdukasiVideo>,
      activeIndex: freezed == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$CEdukasiVideoDetailStateImpl implements _CEdukasiVideoDetailState {
  const _$CEdukasiVideoDetailStateImpl(
      {this.status = const Status.initial(),
      this.offset = 0,
      this.limit = 10,
      final List<EdukasiVideo> data = const [],
      this.activeIndex})
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
  final List<EdukasiVideo> _data;
  @override
  @JsonKey()
  List<EdukasiVideo> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final num? activeIndex;

  @override
  String toString() {
    return 'CEdukasiVideoDetailState(status: $status, offset: $offset, limit: $limit, data: $data, activeIndex: $activeIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CEdukasiVideoDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.activeIndex, activeIndex) ||
                other.activeIndex == activeIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, offset, limit,
      const DeepCollectionEquality().hash(_data), activeIndex);

  /// Create a copy of CEdukasiVideoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CEdukasiVideoDetailStateImplCopyWith<_$CEdukasiVideoDetailStateImpl>
      get copyWith => __$$CEdukasiVideoDetailStateImplCopyWithImpl<
          _$CEdukasiVideoDetailStateImpl>(this, _$identity);
}

abstract class _CEdukasiVideoDetailState implements CEdukasiVideoDetailState {
  const factory _CEdukasiVideoDetailState(
      {final Status status,
      final num offset,
      final num limit,
      final List<EdukasiVideo> data,
      final num? activeIndex}) = _$CEdukasiVideoDetailStateImpl;

  @override
  Status get status;
  @override
  num get offset;
  @override
  num get limit;
  @override
  List<EdukasiVideo> get data;
  @override
  num? get activeIndex;

  /// Create a copy of CEdukasiVideoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CEdukasiVideoDetailStateImplCopyWith<_$CEdukasiVideoDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
