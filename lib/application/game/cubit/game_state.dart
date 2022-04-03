part of 'game_cubit.dart';

enum GameStatus {
  playing,
  gameOver,
}

@freezed
class GameState with _$GameState {
  const factory GameState({
    required GameMatrix gameMatrix,
    required GameStatus gameStatus,
    required int score,
  }) = _GameState;

  factory GameState.initial({required int size}) => GameState(
        gameMatrix: GameMatrix(size),
        gameStatus: GameStatus.playing,
        score: 0,
      );
}
