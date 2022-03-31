part of 'game_bloc.dart';

enum GameStatus {
  playing,
  gameOver,
}

@freezed
class GameState with _$GameState {
  const factory GameState({
    required List<int> gameSquares,
    required GameStatus gameStatus,
    required int score,
  }) = _GameState;

  factory GameState.initial({required int axis}) {
    final int squaresCount = axis * axis;
    final List<int> game = List<int>.generate(
      squaresCount,
      (index) => Constants.gameSquareInitial,
    );
    game[Random().nextInt(squaresCount)] = Constants.gameSquareTwo;
    return GameState(
      gameSquares: game,
      gameStatus: GameStatus.playing,
      score: 0,
    );
  }
}
