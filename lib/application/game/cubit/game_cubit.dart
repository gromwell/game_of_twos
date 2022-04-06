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
    addNewTwo();
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
      emit(state.copyWith(gameMatrix: newGameMatrix));
      addNewTwo();
    }
  }

  void addNewTwo() {
    final GameMatrix newGameMatrix = GameMatrix.copy(state.gameMatrix);
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
    addNewTwo();
  }

  void _performGameAction(
    GameMatrix gameMatrix,
    Direction direction,
    GameAction gameAction,
  ) {
    bool actionPerformed;
    do {
      actionPerformed = false;
      switch (direction) {
        case Direction.up:
          for (var column = 0; column < gameMatrix.size; column++) {
            for (var row = 0; row < gameMatrix.size - 1; row++) {
              final int current = gameMatrix.getAt(column: column, row: row);
              final int next = gameMatrix.getAt(column: column, row: row + 1);
              switch (gameAction) {
                case GameAction.move:
                  if (current == Constants.gamefieldInitial &&
                      next != Constants.gamefieldInitial) {
                    gameMatrix.setAt(next, column: column, row: row);
                    gameMatrix.setAt(
                      Constants.gamefieldInitial,
                      column: column,
                      row: row + 1,
                    );
                    actionPerformed = true;
                  }
                  break;
                case GameAction.combine:
                  if (current != Constants.gamefieldInitial &&
                      current == next) {
                    gameMatrix.setAt(next + current, column: column, row: row);
                    gameMatrix.setAt(
                      Constants.gamefieldInitial,
                      column: column,
                      row: row + 1,
                    );
                  }
                  break;
                default:
                  assert(false);
              }
            }
          }
          break;
        case Direction.down:
          for (var column = 0; column < gameMatrix.size; column++) {
            for (var row = gameMatrix.size - 1; row >= 1; row--) {
              final int current = gameMatrix.getAt(column: column, row: row);
              final int next = gameMatrix.getAt(column: column, row: row - 1);
              switch (gameAction) {
                case GameAction.move:
                  if (current == Constants.gamefieldInitial &&
                      next != Constants.gamefieldInitial) {
                    gameMatrix.setAt(next, column: column, row: row);
                    gameMatrix.setAt(
                      Constants.gamefieldInitial,
                      column: column,
                      row: row - 1,
                    );
                    actionPerformed = true;
                  }
                  break;
                case GameAction.combine:
                  if (current != Constants.gamefieldInitial &&
                      current == next) {
                    gameMatrix.setAt(next + current, column: column, row: row);
                    gameMatrix.setAt(
                      Constants.gamefieldInitial,
                      column: column,
                      row: row - 1,
                    );
                  }
                  break;
                default:
                  assert(false);
              }
            }
          }
          break;
        case Direction.left:
          for (var row = 0; row < gameMatrix.size; row++) {
            for (var column = 0; column < gameMatrix.size - 1; column++) {
              final int current = gameMatrix.getAt(column: column, row: row);
              final int next = gameMatrix.getAt(column: column + 1, row: row);
              switch (gameAction) {
                case GameAction.move:
                  if (current == Constants.gamefieldInitial &&
                      next != Constants.gamefieldInitial) {
                    gameMatrix.setAt(next, column: column, row: row);
                    gameMatrix.setAt(
                      Constants.gamefieldInitial,
                      column: column + 1,
                      row: row,
                    );
                    actionPerformed = true;
                  }
                  break;
                case GameAction.combine:
                  if (current != Constants.gamefieldInitial &&
                      current == next) {
                    gameMatrix.setAt(next + current, column: column, row: row);
                    gameMatrix.setAt(
                      Constants.gamefieldInitial,
                      column: column + 1,
                      row: row,
                    );
                  }
                  break;
                default:
                  assert(false);
              }
            }
          }
          break;
        case Direction.right:
          for (var row = 0; row < gameMatrix.size; row++) {
            for (var column = gameMatrix.size - 1; column >= 1; column--) {
              final int current = gameMatrix.getAt(column: column, row: row);
              final int next = gameMatrix.getAt(column: column - 1, row: row);
              switch (gameAction) {
                case GameAction.move:
                  if (current == Constants.gamefieldInitial &&
                      next != Constants.gamefieldInitial) {
                    gameMatrix.setAt(next, column: column, row: row);
                    gameMatrix.setAt(
                      Constants.gamefieldInitial,
                      column: column - 1,
                      row: row,
                    );
                    actionPerformed = true;
                  }
                  break;
                case GameAction.combine:
                  if (current != Constants.gamefieldInitial &&
                      current == next) {
                    gameMatrix.setAt(next + current, column: column, row: row);
                    gameMatrix.setAt(
                      Constants.gamefieldInitial,
                      column: column - 1,
                      row: row,
                    );
                  }
                  break;
                default:
                  assert(false);
              }
            }
          }
          break;
        default:
          assert(false);
      }
    } while (actionPerformed && gameAction == GameAction.move);
  }
}
