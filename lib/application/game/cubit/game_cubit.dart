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
  GameCubit(this.size) : super(GameState.initial(size: size)) {
    gameTurn();
  }

  Random random = Random();
  int size;
  bool get isPlaying => state.gameStatus == GameStatus.playing;

  void drag(Direction direction) {
    if (isPlaying) {
      final GameMatrix newGameMatrix = GameMatrix.copy(state.gameMatrix);
      _performGameAction(newGameMatrix, direction, GameAction.move);
      _performGameAction(newGameMatrix, direction, GameAction.combine);
      _performGameAction(newGameMatrix, direction, GameAction.move);
      if (state.gameMatrix != newGameMatrix) {
        gameTurn(gameMatrix: newGameMatrix);
      }
    }
  }

  void gameTurn({GameMatrix? gameMatrix}) {
    final GameMatrix newGameMatrix =
        gameMatrix ?? GameMatrix.copy(state.gameMatrix);
    final List<int> fieldsWithInitialValue = [];
    state.gameMatrix.forEachIndexed((index, element) {
      if (element == Constants.gamefieldInitial) {
        fieldsWithInitialValue.add(index);
      }
    });
    if (fieldsWithInitialValue.isEmpty) {
      gameOver();
    } else {
      final int newTwoIndex =
          fieldsWithInitialValue[random.nextInt(fieldsWithInitialValue.length)];
      newGameMatrix.setAtPosition(
        Constants.gamefieldTwo,
        position: newTwoIndex,
      );
      emit(state.copyWith(gameMatrix: newGameMatrix));
    }
  }

  void gameOver() {
    emit(state.copyWith(gameStatus: GameStatus.gameOver));
  }

  void reset() {
    emit(GameState.initial(size: size));
    gameTurn();
  }

  void _performGameAction(
    GameMatrix gameMatrix,
    Direction direction,
    GameAction gameAction,
  ) {
    bool redoAction = false;
    do {
      switch (direction) {
        case Direction.up:
          for (var column = 0; column < gameMatrix.size; column++) {
            for (var row = 0; row < gameMatrix.size - 1; row++) {
              redoAction = _handleGameAction(
                gameAction,
                gameMatrix,
                column,
                row,
                direction,
              );
            }
          }
          break;
        case Direction.down:
          for (var column = 0; column < gameMatrix.size; column++) {
            for (var row = gameMatrix.size - 1; row >= 1; row--) {
              redoAction = _handleGameAction(
                gameAction,
                gameMatrix,
                column,
                row,
                direction,
              );
            }
          }
          break;
        case Direction.left:
          for (var row = 0; row < gameMatrix.size; row++) {
            for (var column = 0; column < gameMatrix.size - 1; column++) {
              redoAction = _handleGameAction(
                gameAction,
                gameMatrix,
                column,
                row,
                direction,
              );
            }
          }
          break;
        case Direction.right:
          for (var row = 0; row < gameMatrix.size; row++) {
            for (var column = gameMatrix.size - 1; column >= 1; column--) {
              redoAction = _handleGameAction(
                gameAction,
                gameMatrix,
                column,
                row,
                direction,
              );
            }
          }
          break;
        default:
          assert(false);
      }
    } while (redoAction);
  }

  bool _handleGameAction(
    GameAction gameAction,
    GameMatrix gameMatrix,
    int column,
    int row,
    Direction direction,
  ) {
    bool shouldRedoAction = false;
    switch (gameAction) {
      case GameAction.move:
        shouldRedoAction = _onMove(gameMatrix, column, row, direction);
        break;
      case GameAction.combine:
        _onCombine(gameMatrix, column, row, direction);
        break;
      default:
        assert(false);
    }
    return shouldRedoAction;
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

  bool _canCombine(int current, int next) {
    return current != Constants.gamefieldInitial && current == next;
  }

  bool _canMove(int current, int next) {
    return current == Constants.gamefieldInitial &&
        next != Constants.gamefieldInitial;
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

  void _onCombine(
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
    if (_canCombine(current, next)) {
      gameMatrix.setAt(next + current, column: column, row: row);
      gameMatrix.setAt(
        Constants.gamefieldInitial,
        column: _getNextColumn(column, direction),
        row: _getNextRow(row, direction),
      );
    }
  }
}
