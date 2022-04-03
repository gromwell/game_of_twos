import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_twos/application/game/cubit/game_matrix.dart';
import 'package:game_of_twos/constants.dart';

part 'game_state.dart';
part 'game_cubit.freezed.dart';

enum Direction { top, bottom, left, right }

class GameCubit extends Cubit<GameState> {
  GameCubit(this.size) : super(GameState.initial(size: size)) {
    addNewTwo();
  }

  Random random = Random();
  int size;
  bool get isPlaying => state.gameStatus == GameStatus.playing;

  void drag(Direction direction) {
    if (isPlaying) {
      // combine
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
}
