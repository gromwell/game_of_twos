part of 'high_score_cubit.dart';

@freezed
class HighScoreState with _$HighScoreState {
  const factory HighScoreState({
    required int highScore,
  }) = _HighscoreState;

  factory HighScoreState.initial() =>
      const HighScoreState(highScore: Constants.highScoreInitial);

  factory HighScoreState.fromJson(Map<String, dynamic> json) =>
      _$HighScoreStateFromJson(json);
}
