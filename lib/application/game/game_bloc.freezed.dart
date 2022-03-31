// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameEventTearOff {
  const _$GameEventTearOff();

  _DragGameEvent drag(Direction direction) {
    return _DragGameEvent(
      direction,
    );
  }

  _AddNewTwoGameEvent addNewTwo() {
    return const _AddNewTwoGameEvent();
  }

  _GameOverGameEvent gameOver() {
    return const _GameOverGameEvent();
  }

  _ResetGameEvent reset() {
    return const _ResetGameEvent();
  }
}

/// @nodoc
const $GameEvent = _$GameEventTearOff();

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Direction direction) drag,
    required TResult Function() addNewTwo,
    required TResult Function() gameOver,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Direction direction)? drag,
    TResult Function()? addNewTwo,
    TResult Function()? gameOver,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Direction direction)? drag,
    TResult Function()? addNewTwo,
    TResult Function()? gameOver,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DragGameEvent value) drag,
    required TResult Function(_AddNewTwoGameEvent value) addNewTwo,
    required TResult Function(_GameOverGameEvent value) gameOver,
    required TResult Function(_ResetGameEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DragGameEvent value)? drag,
    TResult Function(_AddNewTwoGameEvent value)? addNewTwo,
    TResult Function(_GameOverGameEvent value)? gameOver,
    TResult Function(_ResetGameEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DragGameEvent value)? drag,
    TResult Function(_AddNewTwoGameEvent value)? addNewTwo,
    TResult Function(_GameOverGameEvent value)? gameOver,
    TResult Function(_ResetGameEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res> implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  final GameEvent _value;
  // ignore: unused_field
  final $Res Function(GameEvent) _then;
}

/// @nodoc
abstract class _$DragGameEventCopyWith<$Res> {
  factory _$DragGameEventCopyWith(
          _DragGameEvent value, $Res Function(_DragGameEvent) then) =
      __$DragGameEventCopyWithImpl<$Res>;
  $Res call({Direction direction});
}

/// @nodoc
class __$DragGameEventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$DragGameEventCopyWith<$Res> {
  __$DragGameEventCopyWithImpl(
      _DragGameEvent _value, $Res Function(_DragGameEvent) _then)
      : super(_value, (v) => _then(v as _DragGameEvent));

  @override
  _DragGameEvent get _value => super._value as _DragGameEvent;

  @override
  $Res call({
    Object? direction = freezed,
  }) {
    return _then(_DragGameEvent(
      direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
    ));
  }
}

/// @nodoc

class _$_DragGameEvent implements _DragGameEvent {
  const _$_DragGameEvent(this.direction);

  @override
  final Direction direction;

  @override
  String toString() {
    return 'GameEvent.drag(direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DragGameEvent &&
            const DeepCollectionEquality().equals(other.direction, direction));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(direction));

  @JsonKey(ignore: true)
  @override
  _$DragGameEventCopyWith<_DragGameEvent> get copyWith =>
      __$DragGameEventCopyWithImpl<_DragGameEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Direction direction) drag,
    required TResult Function() addNewTwo,
    required TResult Function() gameOver,
    required TResult Function() reset,
  }) {
    return drag(direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Direction direction)? drag,
    TResult Function()? addNewTwo,
    TResult Function()? gameOver,
    TResult Function()? reset,
  }) {
    return drag?.call(direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Direction direction)? drag,
    TResult Function()? addNewTwo,
    TResult Function()? gameOver,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (drag != null) {
      return drag(direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DragGameEvent value) drag,
    required TResult Function(_AddNewTwoGameEvent value) addNewTwo,
    required TResult Function(_GameOverGameEvent value) gameOver,
    required TResult Function(_ResetGameEvent value) reset,
  }) {
    return drag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DragGameEvent value)? drag,
    TResult Function(_AddNewTwoGameEvent value)? addNewTwo,
    TResult Function(_GameOverGameEvent value)? gameOver,
    TResult Function(_ResetGameEvent value)? reset,
  }) {
    return drag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DragGameEvent value)? drag,
    TResult Function(_AddNewTwoGameEvent value)? addNewTwo,
    TResult Function(_GameOverGameEvent value)? gameOver,
    TResult Function(_ResetGameEvent value)? reset,
    required TResult orElse(),
  }) {
    if (drag != null) {
      return drag(this);
    }
    return orElse();
  }
}

abstract class _DragGameEvent implements GameEvent {
  const factory _DragGameEvent(Direction direction) = _$_DragGameEvent;

  Direction get direction;
  @JsonKey(ignore: true)
  _$DragGameEventCopyWith<_DragGameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddNewTwoGameEventCopyWith<$Res> {
  factory _$AddNewTwoGameEventCopyWith(
          _AddNewTwoGameEvent value, $Res Function(_AddNewTwoGameEvent) then) =
      __$AddNewTwoGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddNewTwoGameEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res>
    implements _$AddNewTwoGameEventCopyWith<$Res> {
  __$AddNewTwoGameEventCopyWithImpl(
      _AddNewTwoGameEvent _value, $Res Function(_AddNewTwoGameEvent) _then)
      : super(_value, (v) => _then(v as _AddNewTwoGameEvent));

  @override
  _AddNewTwoGameEvent get _value => super._value as _AddNewTwoGameEvent;
}

/// @nodoc

class _$_AddNewTwoGameEvent implements _AddNewTwoGameEvent {
  const _$_AddNewTwoGameEvent();

  @override
  String toString() {
    return 'GameEvent.addNewTwo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddNewTwoGameEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Direction direction) drag,
    required TResult Function() addNewTwo,
    required TResult Function() gameOver,
    required TResult Function() reset,
  }) {
    return addNewTwo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Direction direction)? drag,
    TResult Function()? addNewTwo,
    TResult Function()? gameOver,
    TResult Function()? reset,
  }) {
    return addNewTwo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Direction direction)? drag,
    TResult Function()? addNewTwo,
    TResult Function()? gameOver,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addNewTwo != null) {
      return addNewTwo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DragGameEvent value) drag,
    required TResult Function(_AddNewTwoGameEvent value) addNewTwo,
    required TResult Function(_GameOverGameEvent value) gameOver,
    required TResult Function(_ResetGameEvent value) reset,
  }) {
    return addNewTwo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DragGameEvent value)? drag,
    TResult Function(_AddNewTwoGameEvent value)? addNewTwo,
    TResult Function(_GameOverGameEvent value)? gameOver,
    TResult Function(_ResetGameEvent value)? reset,
  }) {
    return addNewTwo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DragGameEvent value)? drag,
    TResult Function(_AddNewTwoGameEvent value)? addNewTwo,
    TResult Function(_GameOverGameEvent value)? gameOver,
    TResult Function(_ResetGameEvent value)? reset,
    required TResult orElse(),
  }) {
    if (addNewTwo != null) {
      return addNewTwo(this);
    }
    return orElse();
  }
}

abstract class _AddNewTwoGameEvent implements GameEvent {
  const factory _AddNewTwoGameEvent() = _$_AddNewTwoGameEvent;
}

/// @nodoc
abstract class _$GameOverGameEventCopyWith<$Res> {
  factory _$GameOverGameEventCopyWith(
          _GameOverGameEvent value, $Res Function(_GameOverGameEvent) then) =
      __$GameOverGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GameOverGameEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res>
    implements _$GameOverGameEventCopyWith<$Res> {
  __$GameOverGameEventCopyWithImpl(
      _GameOverGameEvent _value, $Res Function(_GameOverGameEvent) _then)
      : super(_value, (v) => _then(v as _GameOverGameEvent));

  @override
  _GameOverGameEvent get _value => super._value as _GameOverGameEvent;
}

/// @nodoc

class _$_GameOverGameEvent implements _GameOverGameEvent {
  const _$_GameOverGameEvent();

  @override
  String toString() {
    return 'GameEvent.gameOver()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GameOverGameEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Direction direction) drag,
    required TResult Function() addNewTwo,
    required TResult Function() gameOver,
    required TResult Function() reset,
  }) {
    return gameOver();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Direction direction)? drag,
    TResult Function()? addNewTwo,
    TResult Function()? gameOver,
    TResult Function()? reset,
  }) {
    return gameOver?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Direction direction)? drag,
    TResult Function()? addNewTwo,
    TResult Function()? gameOver,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DragGameEvent value) drag,
    required TResult Function(_AddNewTwoGameEvent value) addNewTwo,
    required TResult Function(_GameOverGameEvent value) gameOver,
    required TResult Function(_ResetGameEvent value) reset,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DragGameEvent value)? drag,
    TResult Function(_AddNewTwoGameEvent value)? addNewTwo,
    TResult Function(_GameOverGameEvent value)? gameOver,
    TResult Function(_ResetGameEvent value)? reset,
  }) {
    return gameOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DragGameEvent value)? drag,
    TResult Function(_AddNewTwoGameEvent value)? addNewTwo,
    TResult Function(_GameOverGameEvent value)? gameOver,
    TResult Function(_ResetGameEvent value)? reset,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class _GameOverGameEvent implements GameEvent {
  const factory _GameOverGameEvent() = _$_GameOverGameEvent;
}

/// @nodoc
abstract class _$ResetGameEventCopyWith<$Res> {
  factory _$ResetGameEventCopyWith(
          _ResetGameEvent value, $Res Function(_ResetGameEvent) then) =
      __$ResetGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetGameEventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$ResetGameEventCopyWith<$Res> {
  __$ResetGameEventCopyWithImpl(
      _ResetGameEvent _value, $Res Function(_ResetGameEvent) _then)
      : super(_value, (v) => _then(v as _ResetGameEvent));

  @override
  _ResetGameEvent get _value => super._value as _ResetGameEvent;
}

/// @nodoc

class _$_ResetGameEvent implements _ResetGameEvent {
  const _$_ResetGameEvent();

  @override
  String toString() {
    return 'GameEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetGameEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Direction direction) drag,
    required TResult Function() addNewTwo,
    required TResult Function() gameOver,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Direction direction)? drag,
    TResult Function()? addNewTwo,
    TResult Function()? gameOver,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Direction direction)? drag,
    TResult Function()? addNewTwo,
    TResult Function()? gameOver,
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
    required TResult Function(_DragGameEvent value) drag,
    required TResult Function(_AddNewTwoGameEvent value) addNewTwo,
    required TResult Function(_GameOverGameEvent value) gameOver,
    required TResult Function(_ResetGameEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DragGameEvent value)? drag,
    TResult Function(_AddNewTwoGameEvent value)? addNewTwo,
    TResult Function(_GameOverGameEvent value)? gameOver,
    TResult Function(_ResetGameEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DragGameEvent value)? drag,
    TResult Function(_AddNewTwoGameEvent value)? addNewTwo,
    TResult Function(_GameOverGameEvent value)? gameOver,
    TResult Function(_ResetGameEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetGameEvent implements GameEvent {
  const factory _ResetGameEvent() = _$_ResetGameEvent;
}

/// @nodoc
class _$GameStateTearOff {
  const _$GameStateTearOff();

  _GameState call(
      {required List<int> gameSquares,
      required GameStatus gameStatus,
      required int score}) {
    return _GameState(
      gameSquares: gameSquares,
      gameStatus: gameStatus,
      score: score,
    );
  }
}

/// @nodoc
const $GameState = _$GameStateTearOff();

/// @nodoc
mixin _$GameState {
  List<int> get gameSquares => throw _privateConstructorUsedError;
  GameStatus get gameStatus => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
  $Res call({List<int> gameSquares, GameStatus gameStatus, int score});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;

  @override
  $Res call({
    Object? gameSquares = freezed,
    Object? gameStatus = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      gameSquares: gameSquares == freezed
          ? _value.gameSquares
          : gameSquares // ignore: cast_nullable_to_non_nullable
              as List<int>,
      gameStatus: gameStatus == freezed
          ? _value.gameStatus
          : gameStatus // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(
          _GameState value, $Res Function(_GameState) then) =
      __$GameStateCopyWithImpl<$Res>;
  @override
  $Res call({List<int> gameSquares, GameStatus gameStatus, int score});
}

/// @nodoc
class __$GameStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(_GameState _value, $Res Function(_GameState) _then)
      : super(_value, (v) => _then(v as _GameState));

  @override
  _GameState get _value => super._value as _GameState;

  @override
  $Res call({
    Object? gameSquares = freezed,
    Object? gameStatus = freezed,
    Object? score = freezed,
  }) {
    return _then(_GameState(
      gameSquares: gameSquares == freezed
          ? _value.gameSquares
          : gameSquares // ignore: cast_nullable_to_non_nullable
              as List<int>,
      gameStatus: gameStatus == freezed
          ? _value.gameStatus
          : gameStatus // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameState implements _GameState {
  const _$_GameState(
      {required this.gameSquares,
      required this.gameStatus,
      required this.score});

  @override
  final List<int> gameSquares;
  @override
  final GameStatus gameStatus;
  @override
  final int score;

  @override
  String toString() {
    return 'GameState(gameSquares: $gameSquares, gameStatus: $gameStatus, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameState &&
            const DeepCollectionEquality()
                .equals(other.gameSquares, gameSquares) &&
            const DeepCollectionEquality()
                .equals(other.gameStatus, gameStatus) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameSquares),
      const DeepCollectionEquality().hash(gameStatus),
      const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$GameStateCopyWith<_GameState> get copyWith =>
      __$GameStateCopyWithImpl<_GameState>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {required List<int> gameSquares,
      required GameStatus gameStatus,
      required int score}) = _$_GameState;

  @override
  List<int> get gameSquares;
  @override
  GameStatus get gameStatus;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$GameStateCopyWith<_GameState> get copyWith =>
      throw _privateConstructorUsedError;
}
