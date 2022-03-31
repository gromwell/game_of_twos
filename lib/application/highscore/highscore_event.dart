part of 'highscore_bloc.dart';

@freezed
class HighscoreEvent with _$HighscoreEvent {
  const factory HighscoreEvent.update({required int highscore}) =
      _UpdateHighscoreEvent;
  const factory HighscoreEvent.reset() = _ResetHighscoreEvent;
}
