import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_twos/application/game/cubit/game_matrix.dart';
import 'package:game_of_twos/constants.dart';

part 'game_state.dart';
part 'game_cubit.freezed.dart';

enum Direction { up, down, left, right }
enum GameAction { move, combine }

class GameCubit extends Cubit<GameState> {
  GameCubit(this.size, {this.randomize = true})
      : super(GameState.initial(size: size)) {
    gameTurn();
  }
  bool randomize;
  final Random _random = Random();
  int size;
  bool get isPlaying => state.gameStatus == GameStatus.playing;

  void drag(Direction direction) {
    if (isPlaying) {
      final GameMatrix newGameMatrix = GameMatrix.copy(state.gameMatrix);
      do {} while (_moveSquaresByOnePos(newGameMatrix, direction));
      final int addedScore = _combineSquares(newGameMatrix, direction);
      do {} while (_moveSquaresByOnePos(newGameMatrix, direction));
      if (state.gameMatrix != newGameMatrix) {
        gameTurn(gameMatrix: newGameMatrix, addedScore: addedScore);
      } else {
        if (newGameMatrix.minValue != Constants.gamefieldInitial) {
          gameOver();
        }
      }
    }
  }

  void gameTurn({GameMatrix? gameMatrix, int addedScore = 0}) {
    final GameMatrix newGameMatrix =
        gameMatrix ?? GameMatrix.copy(state.gameMatrix);
    final List<int> fieldsWithInitialValue = [];
    newGameMatrix.forEachIndexed((index, element) {
      if (element == Constants.gamefieldInitial) {
        fieldsWithInitialValue.add(index);
      }
    });
    final int newTwoIndex = fieldsWithInitialValue[
        _getRandomInt(maxValue: fieldsWithInitialValue.length)];
    newGameMatrix.setAtPosition(
      Constants.gamefieldTwo,
      position: newTwoIndex,
    );
    emit(
      state.copyWith(
        gameMatrix: newGameMatrix,
        score: state.score + addedScore,
      ),
    );
  }

  int _getRandomInt({required int maxValue}) {
    if (randomize) {
      return _random.nextInt(maxValue);
    } else {
      return 0;
    }
  }

  void gameOver() {
    emit(state.copyWith(gameStatus: GameStatus.gameOver));
  }

  void reset() {
    emit(GameState.initial(size: size));
    gameTurn();
  }

  bool _moveSquaresByOnePos(GameMatrix gameMatrix, Direction direction) {
    bool anySquareMoved = false;
    switch (direction) {
      case Direction.up:
        for (var column = 0; column < gameMatrix.size; column++) {
          for (var row = 0; row < gameMatrix.size - 1; row++) {
            anySquareMoved =
                anySquareMoved || _onMove(gameMatrix, column, row, direction);
          }
        }
        break;
      case Direction.down:
        for (var column = 0; column < gameMatrix.size; column++) {
          for (var row = gameMatrix.size - 1; row >= 1; row--) {
            anySquareMoved =
                anySquareMoved || _onMove(gameMatrix, column, row, direction);
          }
        }
        break;
      case Direction.left:
        for (var row = 0; row < gameMatrix.size; row++) {
          for (var column = 0; column < gameMatrix.size - 1; column++) {
            anySquareMoved =
                anySquareMoved || _onMove(gameMatrix, column, row, direction);
          }
        }
        break;
      case Direction.right:
        for (var row = 0; row < gameMatrix.size; row++) {
          for (var column = gameMatrix.size - 1; column >= 1; column--) {
            anySquareMoved =
                anySquareMoved || _onMove(gameMatrix, column, row, direction);
          }
        }
        break;
      default:
        assert(false);
    }
    return anySquareMoved;
  }

  bool _onMove(
    GameMatrix gameMatrix,
    int column,
    int row,
    Direction direction,
  ) {
    final int current = gameMatrix.getAt(column: column, row: row);
    final int next = gameMatrix.getAt(
      column: _getNextColumn(column, direction),
      row: _getNextRow(row, direction),
    );
    if (_canMove(current, next)) {
      gameMatrix.setAt(next, column: column, row: row);
      gameMatrix.setAt(
        Constants.gamefieldInitial,
        column: _getNextColumn(column, direction),
        row: _getNextRow(row, direction),
      );
      return true;
    } else {
      return false;
    }
  }

  bool _canMove(int current, int next) {
    return current == Constants.gamefieldInitial &&
        next != Constants.gamefieldInitial;
  }

  int _combineSquares(GameMatrix gameMatrix, Direction direction) {
    int score = 0;
    switch (direction) {
      case Direction.up:
        for (var column = 0; column < gameMatrix.size; column++) {
          for (var row = 0; row < gameMatrix.size - 1; row++) {
            score += _onCombine(gameMatrix, column, row, direction);
          }
        }
        break;
      case Direction.down:
        for (var column = 0; column < gameMatrix.size; column++) {
          for (var row = gameMatrix.size - 1; row >= 1; row--) {
            score += _onCombine(gameMatrix, column, row, direction);
          }
        }
        break;
      case Direction.left:
        for (var row = 0; row < gameMatrix.size; row++) {
          for (var column = 0; column < gameMatrix.size - 1; column++) {
            score += _onCombine(gameMatrix, column, row, direction);
          }
        }
        break;
      case Direction.right:
        for (var row = 0; row < gameMatrix.size; row++) {
          for (var column = gameMatrix.size - 1; column >= 1; column--) {
            score += _onCombine(gameMatrix, column, row, direction);
          }
        }
        break;
      default:
        assert(false);
    }
    return score;
  }

  int _onCombine(
    GameMatrix gameMatrix,
    int column,
    int row,
    Direction direction,
  ) {
    int score = 0;
    final int current = gameMatrix.getAt(column: column, row: row);
    final int next = gameMatrix.getAt(
      column: _getNextColumn(column, direction),
      row: _getNextRow(row, direction),
    );
    if (_canCombine(current, next)) {
      score = next + current;
      gameMatrix.setAt(next + current, column: column, row: row);
      gameMatrix.setAt(
        Constants.gamefieldInitial,
        column: _getNextColumn(column, direction),
        row: _getNextRow(row, direction),
      );
    }
    return score;
  }

  bool _canCombine(int current, int next) {
    return current != Constants.gamefieldInitial && current == next;
  }

  int _getNextRow(int row, Direction direction) {
    int nextRow = row;
    switch (direction) {
      case Direction.up:
        nextRow++;
        break;
      case Direction.down:
        nextRow--;
        break;
      default:
    }
    return nextRow;
  }

  int _getNextColumn(int column, Direction direction) {
    int nextColumn = column;
    switch (direction) {
      case Direction.left:
        nextColumn++;
        break;
      case Direction.right:
        nextColumn--;
        break;
      default:
    }
    return nextColumn;
  }
}
