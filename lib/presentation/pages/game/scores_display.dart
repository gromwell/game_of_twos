import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_twos/application/scores/highscore_bloc.dart';

class ScoresDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HighscoreBloc(),
      child: BlocBuilder<HighscoreBloc, HighscoreState>(
        builder: (context, HighscoreState state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Score: ${0}'),
              Text('Highscore: ${state.highScore}')
            ],
          );
        },
      ),
    );
  }
}
