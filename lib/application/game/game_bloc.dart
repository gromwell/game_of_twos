import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_twos/application/game/game_matrix.dart';
import 'package:game_of_twos/constants.dart';

part 'game_event.dart';
part 'game_state.dart';
part 'game_bloc.freezed.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc(int size) : super(GameState.initial(size: size)) {
    on<_DragGameEvent>(
      (event, emit) {
        _onDrag(event, emit);
      },
      transformer: sequential(),
    );
    on<_GameOverGameEvent>(
      (event, emit) {
        _onGameOver(emit);
      },
      transformer: sequential(),
    );
    on<_AddNewTwoGameEvent>(
      (event, emit) {
        _onAddNewTwo(emit);
      },
      transformer: sequential(),
    );
    on<_ResetGameEvent>(
      (event, emit) {
        _onReset(emit, size);
      },
      transformer: sequential(),
    );

    add(const GameEvent.addNewTwo());
  }

  void _onDrag(_DragGameEvent event, Emitter<GameState> emit) {
    if (isPlaying) {
      // combine

      add(const GameEvent.addNewTwo());
    }
  }

  void _onGameOver(Emitter<GameState> emit) {
    emit(state.copyWith(gameStatus: GameStatus.gameOver));
  }

  Random random = Random();

  bool get isPlaying => state.gameStatus == GameStatus.playing;

  void _onReset(Emitter<GameState> emit, int size) {
    emit(GameState.initial(size: size));
    add(const GameEvent.addNewTwo());
  }

  void _onAddNewTwo(Emitter<GameState> emit) {
    final GameMatrix newGameMatrix = GameMatrix.copy(state.gameMatrix);
    final List<int> fieldsWithInitialValue = [];
    state.gameMatrix.forEachIndexed((index, element) {
      if (element == Constants.gamefieldInitial) {
        fieldsWithInitialValue.add(index);
      }
    });
    if (fieldsWithInitialValue.isEmpty) {
      add(const GameEvent.gameOver());
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
}
