part of 'scores_bloc.dart';

@freezed
class ScoresState with _$ScoresState {
  const factory ScoresState({
    required int score,
    required int highScore,
  }) = _ScoresState;

  factory ScoresState.initial() => const ScoresState(score: 0, highScore: 0);
}
