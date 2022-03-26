import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_twos/constants.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'highscore_event.dart';
part 'highscore_state.dart';
part 'highscore_bloc.freezed.dart';
part 'highscore_bloc.g.dart';

class HighscoreBloc extends HydratedBloc<HighscoreEvent, HighscoreState> {
  HighscoreBloc() : super(HighscoreState.initial()) {
    on<UpdateHighscoreEvent>((event, emit) {
      if (event.highscore > state.highScore) {
        emit(state.copyWith(highScore: event.highscore));
      }
    });
    on<ResetHighscoreEvent>((event, emit) {
      final initialState = HighscoreState.initial();
      if (state.highScore != initialState.highScore) {
        emit(initialState);
      }
    });
  }

  @override
  HighscoreState? fromJson(Map<String, dynamic> json) {
    try {
      return HighscoreState.fromJson(json);
    } catch (_) {
      // TODO: add error log
    }
    return HighscoreState.initial();
  }

  @override
  Map<String, dynamic>? toJson(HighscoreState state) {
    return state.toJson();
  }
}
