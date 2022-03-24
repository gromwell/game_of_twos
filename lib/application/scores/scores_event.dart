part of 'scores_bloc.dart';

@freezed
class ScoresEvent with _$ScoresEvent {
  const factory ScoresEvent.update(int score, int highScore) =
      _ScoresEventUpdate;
}
