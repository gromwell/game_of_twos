part of 'highscore_bloc.dart';

@freezed
class HighscoreEvent with _$HighscoreEvent {
  const factory HighscoreEvent.update(int highScore) = _HighscoreEventUpdate;
}
