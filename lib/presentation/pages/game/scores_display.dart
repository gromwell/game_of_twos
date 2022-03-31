import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_twos/application/highscore/highscore_bloc.dart';

class ScoresDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [Text('Score: ${0}'), HighscoreDisplay()],
      ),
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
      create: (context) => HighscoreBloc(),
      child: BlocBuilder<HighscoreBloc, HighscoreState>(
        builder: (context, state) {
          return Text('Highscore: ${state.highScore}');
        },
      ),
    );
  }
}
