import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scores_event.dart';
part 'scores_state.dart';
part 'scores_bloc.freezed.dart';

class ScoresBloc extends Bloc<ScoresEvent, ScoresState> {
  ScoresBloc() : super(ScoresState.initial()) {
    on<ScoresEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
