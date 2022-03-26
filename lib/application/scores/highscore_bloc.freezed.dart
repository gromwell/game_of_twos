// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'highscore_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HighscoreEventTearOff {
  const _$HighscoreEventTearOff();

  _HighscoreEventUpdate update(int highScore) {
    return _HighscoreEventUpdate(
      highScore,
    );
  }
}

/// @nodoc
const $HighscoreEvent = _$HighscoreEventTearOff();

/// @nodoc
mixin _$HighscoreEvent {
  int get highScore => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int highScore) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int highScore)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int highScore)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HighscoreEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HighscoreEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HighscoreEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HighscoreEventCopyWith<HighscoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighscoreEventCopyWith<$Res> {
  factory $HighscoreEventCopyWith(
          HighscoreEvent value, $Res Function(HighscoreEvent) then) =
      _$HighscoreEventCopyWithImpl<$Res>;
  $Res call({int highScore});
}

/// @nodoc
class _$HighscoreEventCopyWithImpl<$Res>
    implements $HighscoreEventCopyWith<$Res> {
  _$HighscoreEventCopyWithImpl(this._value, this._then);

  final HighscoreEvent _value;
  // ignore: unused_field
  final $Res Function(HighscoreEvent) _then;

  @override
  $Res call({
    Object? highScore = freezed,
  }) {
    return _then(_value.copyWith(
      highScore: highScore == freezed
          ? _value.highScore
          : highScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HighscoreEventUpdateCopyWith<$Res>
    implements $HighscoreEventCopyWith<$Res> {
  factory _$HighscoreEventUpdateCopyWith(_HighscoreEventUpdate value,
          $Res Function(_HighscoreEventUpdate) then) =
      __$HighscoreEventUpdateCopyWithImpl<$Res>;
  @override
  $Res call({int highScore});
}

/// @nodoc
class __$HighscoreEventUpdateCopyWithImpl<$Res>
    extends _$HighscoreEventCopyWithImpl<$Res>
    implements _$HighscoreEventUpdateCopyWith<$Res> {
  __$HighscoreEventUpdateCopyWithImpl(
      _HighscoreEventUpdate _value, $Res Function(_HighscoreEventUpdate) _then)
      : super(_value, (v) => _then(v as _HighscoreEventUpdate));

  @override
  _HighscoreEventUpdate get _value => super._value as _HighscoreEventUpdate;

  @override
  $Res call({
    Object? highScore = freezed,
  }) {
    return _then(_HighscoreEventUpdate(
      highScore == freezed
          ? _value.highScore
          : highScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HighscoreEventUpdate implements _HighscoreEventUpdate {
  const _$_HighscoreEventUpdate(this.highScore);

  @override
  final int highScore;

  @override
  String toString() {
    return 'HighscoreEvent.update(highScore: $highScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HighscoreEventUpdate &&
            const DeepCollectionEquality().equals(other.highScore, highScore));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(highScore));

  @JsonKey(ignore: true)
  @override
  _$HighscoreEventUpdateCopyWith<_HighscoreEventUpdate> get copyWith =>
      __$HighscoreEventUpdateCopyWithImpl<_HighscoreEventUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int highScore) update,
  }) {
    return update(highScore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int highScore)? update,
  }) {
    return update?.call(highScore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int highScore)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(highScore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HighscoreEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HighscoreEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HighscoreEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _HighscoreEventUpdate implements HighscoreEvent {
  const factory _HighscoreEventUpdate(int highScore) = _$_HighscoreEventUpdate;

  @override
  int get highScore;
  @override
  @JsonKey(ignore: true)
  _$HighscoreEventUpdateCopyWith<_HighscoreEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

HighscoreState _$HighscoreStateFromJson(Map<String, dynamic> json) {
  return _HighscoreState.fromJson(json);
}

/// @nodoc
class _$HighscoreStateTearOff {
  const _$HighscoreStateTearOff();

  _HighscoreState call({required int highScore}) {
    return _HighscoreState(
      highScore: highScore,
    );
  }

  HighscoreState fromJson(Map<String, Object?> json) {
    return HighscoreState.fromJson(json);
  }
}

/// @nodoc
const $HighscoreState = _$HighscoreStateTearOff();

/// @nodoc
mixin _$HighscoreState {
  int get highScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighscoreStateCopyWith<HighscoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighscoreStateCopyWith<$Res> {
  factory $HighscoreStateCopyWith(
          HighscoreState value, $Res Function(HighscoreState) then) =
      _$HighscoreStateCopyWithImpl<$Res>;
  $Res call({int highScore});
}

/// @nodoc
class _$HighscoreStateCopyWithImpl<$Res>
    implements $HighscoreStateCopyWith<$Res> {
  _$HighscoreStateCopyWithImpl(this._value, this._then);

  final HighscoreState _value;
  // ignore: unused_field
  final $Res Function(HighscoreState) _then;

  @override
  $Res call({
    Object? highScore = freezed,
  }) {
    return _then(_value.copyWith(
      highScore: highScore == freezed
          ? _value.highScore
          : highScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HighscoreStateCopyWith<$Res>
    implements $HighscoreStateCopyWith<$Res> {
  factory _$HighscoreStateCopyWith(
          _HighscoreState value, $Res Function(_HighscoreState) then) =
      __$HighscoreStateCopyWithImpl<$Res>;
  @override
  $Res call({int highScore});
}

/// @nodoc
class __$HighscoreStateCopyWithImpl<$Res>
    extends _$HighscoreStateCopyWithImpl<$Res>
    implements _$HighscoreStateCopyWith<$Res> {
  __$HighscoreStateCopyWithImpl(
      _HighscoreState _value, $Res Function(_HighscoreState) _then)
      : super(_value, (v) => _then(v as _HighscoreState));

  @override
  _HighscoreState get _value => super._value as _HighscoreState;

  @override
  $Res call({
    Object? highScore = freezed,
  }) {
    return _then(_HighscoreState(
      highScore: highScore == freezed
          ? _value.highScore
          : highScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HighscoreState implements _HighscoreState {
  const _$_HighscoreState({required this.highScore});

  factory _$_HighscoreState.fromJson(Map<String, dynamic> json) =>
      _$$_HighscoreStateFromJson(json);

  @override
  final int highScore;

  @override
  String toString() {
    return 'HighscoreState(highScore: $highScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HighscoreState &&
            const DeepCollectionEquality().equals(other.highScore, highScore));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(highScore));

  @JsonKey(ignore: true)
  @override
  _$HighscoreStateCopyWith<_HighscoreState> get copyWith =>
      __$HighscoreStateCopyWithImpl<_HighscoreState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HighscoreStateToJson(this);
  }
}

abstract class _HighscoreState implements HighscoreState {
  const factory _HighscoreState({required int highScore}) = _$_HighscoreState;

  factory _HighscoreState.fromJson(Map<String, dynamic> json) =
      _$_HighscoreState.fromJson;

  @override
  int get highScore;
  @override
  @JsonKey(ignore: true)
  _$HighscoreStateCopyWith<_HighscoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
