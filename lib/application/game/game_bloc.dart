import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_twos/constants.dart';

part 'game_event.dart';
part 'game_state.dart';
part 'game_bloc.freezed.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc(int axis) : super(GameState.initial(axis: axis)) {
    on<_DragGameEvent>(
      (event, emit) {
        if (isPlaying) {}
      },
      transformer: sequential(),
    );
    on<_GameOverGameEvent>(
      (event, emit) {
        emit(state.copyWith(gameStatus: GameStatus.gameOver));
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
        _onReset(emit, axis);
      },
      transformer: sequential(),
    );
  }
  Random random = Random();
  
  bool get isPlaying => state.gameStatus == GameStatus.playing;

  void _onReset(Emitter<GameState> emit, int axis) {
    emit(GameState.initial(axis: axis));
  }

  void _onAddNewTwo(Emitter<GameState> emit) {
    final List<int> squaresWithNoValue = [];
    state.gameSquares.forEachIndexed((index, element) {
      if (element == Constants.gameSquareInitial) {
        squaresWithNoValue.add(index);
      }
    });
    if (squaresWithNoValue.isEmpty) {
      add(const GameEvent.gameOver());
    } else {
      final int newTwoIndex =
          squaresWithNoValue[random.nextInt(squaresWithNoValue.length)];
      state.gameSquares[newTwoIndex] = Constants.gameSquareTwo;
      emit(state);
    }
  }
}
