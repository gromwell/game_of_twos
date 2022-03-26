import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'highscore_event.dart';
part 'highscore_state.dart';
part 'highscore_bloc.freezed.dart';
part 'highscore_bloc.g.dart';

class HighscoreBloc extends HydratedBloc<HighscoreEvent, HighscoreState> {
  HighscoreBloc() : super(HighscoreState.initial()) {
    on<HighscoreEvent>((event, emit) {
      // TODO: implement event handler
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
