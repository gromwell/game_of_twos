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

  _UpdateHighscoreEvent update({required int highscore}) {
    return _UpdateHighscoreEvent(
      highscore: highscore,
    );
  }

  _ResetHighscoreEvent reset() {
    return const _ResetHighscoreEvent();
  }
}

/// @nodoc
const $HighscoreEvent = _$HighscoreEventTearOff();

/// @nodoc
mixin _$HighscoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int highscore) update,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int highscore)? update,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int highscore)? update,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateHighscoreEvent value) update,
    required TResult Function(_ResetHighscoreEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateHighscoreEvent value)? update,
    TResult Function(_ResetHighscoreEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateHighscoreEvent value)? update,
    TResult Function(_ResetHighscoreEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighscoreEventCopyWith<$Res> {
  factory $HighscoreEventCopyWith(
          HighscoreEvent value, $Res Function(HighscoreEvent) then) =
      _$HighscoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HighscoreEventCopyWithImpl<$Res>
    implements $HighscoreEventCopyWith<$Res> {
  _$HighscoreEventCopyWithImpl(this._value, this._then);

  final HighscoreEvent _value;
  // ignore: unused_field
  final $Res Function(HighscoreEvent) _then;
}

/// @nodoc
abstract class _$UpdateHighscoreEventCopyWith<$Res> {
  factory _$UpdateHighscoreEventCopyWith(_UpdateHighscoreEvent value,
          $Res Function(_UpdateHighscoreEvent) then) =
      __$UpdateHighscoreEventCopyWithImpl<$Res>;
  $Res call({int highscore});
}

/// @nodoc
class __$UpdateHighscoreEventCopyWithImpl<$Res>
    extends _$HighscoreEventCopyWithImpl<$Res>
    implements _$UpdateHighscoreEventCopyWith<$Res> {
  __$UpdateHighscoreEventCopyWithImpl(
      _UpdateHighscoreEvent _value, $Res Function(_UpdateHighscoreEvent) _then)
      : super(_value, (v) => _then(v as _UpdateHighscoreEvent));

  @override
  _UpdateHighscoreEvent get _value => super._value as _UpdateHighscoreEvent;

  @override
  $Res call({
    Object? highscore = freezed,
  }) {
    return _then(_UpdateHighscoreEvent(
      highscore: highscore == freezed
          ? _value.highscore
          : highscore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateHighscoreEvent implements _UpdateHighscoreEvent {
  const _$_UpdateHighscoreEvent({required this.highscore});

  @override
  final int highscore;

  @override
  String toString() {
    return 'HighscoreEvent.update(highscore: $highscore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateHighscoreEvent &&
            const DeepCollectionEquality().equals(other.highscore, highscore));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(highscore));

  @JsonKey(ignore: true)
  @override
  _$UpdateHighscoreEventCopyWith<_UpdateHighscoreEvent> get copyWith =>
      __$UpdateHighscoreEventCopyWithImpl<_UpdateHighscoreEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int highscore) update,
    required TResult Function() reset,
  }) {
    return update(highscore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int highscore)? update,
    TResult Function()? reset,
  }) {
    return update?.call(highscore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int highscore)? update,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(highscore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateHighscoreEvent value) update,
    required TResult Function(_ResetHighscoreEvent value) reset,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateHighscoreEvent value)? update,
    TResult Function(_ResetHighscoreEvent value)? reset,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateHighscoreEvent value)? update,
    TResult Function(_ResetHighscoreEvent value)? reset,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateHighscoreEvent implements HighscoreEvent {
  const factory _UpdateHighscoreEvent({required int highscore}) =
      _$_UpdateHighscoreEvent;

  int get highscore;
  @JsonKey(ignore: true)
  _$UpdateHighscoreEventCopyWith<_UpdateHighscoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetHighscoreEventCopyWith<$Res> {
  factory _$ResetHighscoreEventCopyWith(_ResetHighscoreEvent value,
          $Res Function(_ResetHighscoreEvent) then) =
      __$ResetHighscoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetHighscoreEventCopyWithImpl<$Res>
    extends _$HighscoreEventCopyWithImpl<$Res>
    implements _$ResetHighscoreEventCopyWith<$Res> {
  __$ResetHighscoreEventCopyWithImpl(
      _ResetHighscoreEvent _value, $Res Function(_ResetHighscoreEvent) _then)
      : super(_value, (v) => _then(v as _ResetHighscoreEvent));

  @override
  _ResetHighscoreEvent get _value => super._value as _ResetHighscoreEvent;
}

/// @nodoc

class _$_ResetHighscoreEvent implements _ResetHighscoreEvent {
  const _$_ResetHighscoreEvent();

  @override
  String toString() {
    return 'HighscoreEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetHighscoreEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int highscore) update,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int highscore)? update,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int highscore)? update,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateHighscoreEvent value) update,
    required TResult Function(_ResetHighscoreEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateHighscoreEvent value)? update,
    TResult Function(_ResetHighscoreEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateHighscoreEvent value)? update,
    TResult Function(_ResetHighscoreEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetHighscoreEvent implements HighscoreEvent {
  const factory _ResetHighscoreEvent() = _$_ResetHighscoreEvent;
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
