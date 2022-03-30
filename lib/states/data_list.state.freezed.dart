// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_list.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataListStateTearOff {
  const _$DataListStateTearOff();

  _DataListState call(
      {List<Room> rooms = const [],
      bool isLoading = false,
      bool isFetchingNext = false,
      String error = '',
      bool hasNext = true}) {
    return _DataListState(
      rooms: rooms,
      isLoading: isLoading,
      isFetchingNext: isFetchingNext,
      error: error,
      hasNext: hasNext,
    );
  }
}

/// @nodoc
const $DataListState = _$DataListStateTearOff();

/// @nodoc
mixin _$DataListState {
  List<Room> get rooms => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFetchingNext => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataListStateCopyWith<DataListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListStateCopyWith<$Res> {
  factory $DataListStateCopyWith(
          DataListState value, $Res Function(DataListState) then) =
      _$DataListStateCopyWithImpl<$Res>;
  $Res call(
      {List<Room> rooms,
      bool isLoading,
      bool isFetchingNext,
      String error,
      bool hasNext});
}

/// @nodoc
class _$DataListStateCopyWithImpl<$Res>
    implements $DataListStateCopyWith<$Res> {
  _$DataListStateCopyWithImpl(this._value, this._then);

  final DataListState _value;
  // ignore: unused_field
  final $Res Function(DataListState) _then;

  @override
  $Res call({
    Object? rooms = freezed,
    Object? isLoading = freezed,
    Object? isFetchingNext = freezed,
    Object? error = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_value.copyWith(
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingNext: isFetchingNext == freezed
          ? _value.isFetchingNext
          : isFetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DataListStateCopyWith<$Res>
    implements $DataListStateCopyWith<$Res> {
  factory _$DataListStateCopyWith(
          _DataListState value, $Res Function(_DataListState) then) =
      __$DataListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Room> rooms,
      bool isLoading,
      bool isFetchingNext,
      String error,
      bool hasNext});
}

/// @nodoc
class __$DataListStateCopyWithImpl<$Res>
    extends _$DataListStateCopyWithImpl<$Res>
    implements _$DataListStateCopyWith<$Res> {
  __$DataListStateCopyWithImpl(
      _DataListState _value, $Res Function(_DataListState) _then)
      : super(_value, (v) => _then(v as _DataListState));

  @override
  _DataListState get _value => super._value as _DataListState;

  @override
  $Res call({
    Object? rooms = freezed,
    Object? isLoading = freezed,
    Object? isFetchingNext = freezed,
    Object? error = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_DataListState(
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingNext: isFetchingNext == freezed
          ? _value.isFetchingNext
          : isFetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DataListState implements _DataListState {
  const _$_DataListState(
      {this.rooms = const [],
      this.isLoading = false,
      this.isFetchingNext = false,
      this.error = '',
      this.hasNext = true});

  @JsonKey()
  @override
  final List<Room> rooms;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isFetchingNext;
  @JsonKey()
  @override
  final String error;
  @JsonKey()
  @override
  final bool hasNext;

  @override
  String toString() {
    return 'DataListState(rooms: $rooms, isLoading: $isLoading, isFetchingNext: $isFetchingNext, error: $error, hasNext: $hasNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataListState &&
            const DeepCollectionEquality().equals(other.rooms, rooms) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingNext, isFetchingNext) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.hasNext, hasNext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rooms),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isFetchingNext),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(hasNext));

  @JsonKey(ignore: true)
  @override
  _$DataListStateCopyWith<_DataListState> get copyWith =>
      __$DataListStateCopyWithImpl<_DataListState>(this, _$identity);
}

abstract class _DataListState implements DataListState {
  const factory _DataListState(
      {List<Room> rooms,
      bool isLoading,
      bool isFetchingNext,
      String error,
      bool hasNext}) = _$_DataListState;

  @override
  List<Room> get rooms;
  @override
  bool get isLoading;
  @override
  bool get isFetchingNext;
  @override
  String get error;
  @override
  bool get hasNext;
  @override
  @JsonKey(ignore: true)
  _$DataListStateCopyWith<_DataListState> get copyWith =>
      throw _privateConstructorUsedError;
}
