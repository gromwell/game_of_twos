import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_twos/application/game/cubit/game_cubit.dart';
import 'package:game_of_twos/application/highscore/high_score_cubit.dart';

class ScoresDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [ScoreDisplay(), HighscoreDisplay()],
      ),
    );
  }
}

class ScoreDisplay extends StatelessWidget {
  const ScoreDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      buildWhen: (previous, current) => previous.score != current.score,
      builder: (context, state) {
        return Text('Score: ${state.score}');
      },
    );
  }
}

class HighscoreDisplay extends StatelessWidget {
  const HighscoreDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HighScoreCubit(),
      child: BlocBuilder<HighScoreCubit, HighScoreState>(
        builder: (context, state) {
          return Text('Highscore: ${state.highScore}');
        },
      ),
    );
  }
}
