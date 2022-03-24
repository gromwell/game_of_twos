import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_twos/application/scores/scores_bloc.dart';

class ScoresDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScoresBloc(),
      child: BlocBuilder<ScoresBloc, ScoresState>(
        builder: (context, ScoresState state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Score: ${state.score}'),
              Text('Highscore: ${state.highScore}')
            ],
          );
        },
      ),
    );
  }
}
