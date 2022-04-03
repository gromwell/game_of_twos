// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameStateTearOff {
  const _$GameStateTearOff();

  _GameState call(
      {required GameMatrix gameMatrix,
      required GameStatus gameStatus,
      required int score}) {
    return _GameState(
      gameMatrix: gameMatrix,
      gameStatus: gameStatus,
      score: score,
    );
  }
}

/// @nodoc
const $GameState = _$GameStateTearOff();

/// @nodoc
mixin _$GameState {
  GameMatrix get gameMatrix => throw _privateConstructorUsedError;
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
  $Res call({GameMatrix gameMatrix, GameStatus gameStatus, int score});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;

  @override
  $Res call({
    Object? gameMatrix = freezed,
    Object? gameStatus = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      gameMatrix: gameMatrix == freezed
          ? _value.gameMatrix
          : gameMatrix // ignore: cast_nullable_to_non_nullable
              as GameMatrix,
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
  $Res call({GameMatrix gameMatrix, GameStatus gameStatus, int score});
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
    Object? gameMatrix = freezed,
    Object? gameStatus = freezed,
    Object? score = freezed,
  }) {
    return _then(_GameState(
      gameMatrix: gameMatrix == freezed
          ? _value.gameMatrix
          : gameMatrix // ignore: cast_nullable_to_non_nullable
              as GameMatrix,
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
      {required this.gameMatrix,
      required this.gameStatus,
      required this.score});

  @override
  final GameMatrix gameMatrix;
  @override
  final GameStatus gameStatus;
  @override
  final int score;

  @override
  String toString() {
    return 'GameState(gameMatrix: $gameMatrix, gameStatus: $gameStatus, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameState &&
            const DeepCollectionEquality()
                .equals(other.gameMatrix, gameMatrix) &&
            const DeepCollectionEquality()
                .equals(other.gameStatus, gameStatus) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameMatrix),
      const DeepCollectionEquality().hash(gameStatus),
      const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$GameStateCopyWith<_GameState> get copyWith =>
      __$GameStateCopyWithImpl<_GameState>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {required GameMatrix gameMatrix,
      required GameStatus gameStatus,
      required int score}) = _$_GameState;

  @override
  GameMatrix get gameMatrix;
  @override
  GameStatus get gameStatus;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$GameStateCopyWith<_GameState> get copyWith =>
      throw _privateConstructorUsedError;
}
