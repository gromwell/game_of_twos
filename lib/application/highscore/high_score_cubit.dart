import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_twos/constants.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'high_score_state.dart';
part 'high_score_cubit.freezed.dart';
part 'high_score_cubit.g.dart';

class HighScoreCubit extends HydratedCubit<HighScoreState> {
  HighScoreCubit() : super(HighScoreState.initial());

  void update({required int highScore}) {
    if (highScore > state.highScore) {
      emit(state.copyWith(highScore: highScore));
    }
  }

  void reset() {
    final initialState = HighScoreState.initial();
    if (state.highScore != initialState.highScore) {
      emit(initialState);
    }
  }

  @override
  HighScoreState? fromJson(Map<String, dynamic> json) {
    try {
      return HighScoreState.fromJson(json);
    } catch (_) {
      // TODO: add error log
    }
    return HighScoreState.initial();
  }

  @override
  Map<String, dynamic>? toJson(HighScoreState state) {
    return state.toJson();
  }
}
