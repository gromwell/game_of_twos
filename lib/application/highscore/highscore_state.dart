part of 'highscore_bloc.dart';

@freezed
class HighscoreState with _$HighscoreState {
  const factory HighscoreState({
    required int highScore,
  }) = _HighscoreState;

  factory HighscoreState.initial() =>
      const HighscoreState(highScore: Constants.highScoreInitial);

  factory HighscoreState.fromJson(Map<String, dynamic> json) =>
      _$HighscoreStateFromJson(json);
}
