import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_twos/application/game/cubit/game_cubit.dart';
import 'package:game_of_twos/application/game/cubit/game_matrix.dart';
import 'package:game_of_twos/constants.dart';
import 'package:game_of_twos/presentation/my_scaffold.dart';
import 'package:game_of_twos/presentation/pages/game/game_gesture_detector.dart';
import 'package:game_of_twos/presentation/pages/game/scores_display.dart';

class GamePage extends StatelessWidget {
  const GamePage(this.size);
  final int size;

  @override
  Widget build(BuildContext context) {
    final double gameBoardSize = _getGameBoardSize(context);
    final double fieldSize = gameBoardSize / size;
    final double fieldPadding = fieldSize / 4;

    return BlocProvider(
      create: (context) => GameCubit(size),
      child: Game(
        gameBoardSize: gameBoardSize,
        size: size,
        fieldPadding: fieldPadding,
      ),
    );
  }

  double _getGameBoardSize(BuildContext context) {
    double shorterEdge = min(
      MediaQuery.of(context).size.width,
      MediaQuery.of(context).size.height,
    );
    if (shorterEdge == MediaQuery.of(context).size.height) {
      shorterEdge = shorterEdge -
          2 * kToolbarHeight -
          MediaQuery.of(context).viewPadding.top;
    }
    return shorterEdge - Constants.paddingSmall * 2;
  }
}

class Game extends StatelessWidget {
  const Game({
    required this.gameBoardSize,
    required this.size,
    required this.fieldPadding,
  });

  final double gameBoardSize;
  final int size;
  final double fieldPadding;

  @override
  Widget build(BuildContext context) {
    return GameGestureDetector(
      onDrag: (direction) {
        context.read<GameCubit>().drag(direction);
      },
      child: MyScaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            width: gameBoardSize,
            height: gameBoardSize,
            child: BlocBuilder<GameCubit, GameState>(
              builder: (context, state) {
                return GameBoard(size: size, fieldPadding: fieldPadding);
              },
            ),
          ),
        ),
        bottomNavigationBar: ScoresDisplay(),
      ),
    );
  }
}

class GameBoard extends StatelessWidget {
  const GameBoard({
    Key? key,
    required this.size,
    required this.fieldPadding,
  }) : super(key: key);

  final int size;
  final double fieldPadding;

  @override
  Widget build(BuildContext context) {
    final GameMatrix gameMatrix = context.read<GameCubit>().state.gameMatrix;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: size,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: size * size,
      itemBuilder: (BuildContext context, int index) {
        final int gameValue = gameMatrix.getAtPosition(position: index);
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary,
              width: Constants.gameSquareBorderSize,
            ),
            color: Theme.of(context).colorScheme.secondary.withOpacity(
                  _calculateOpacity(
                    value: gameValue,
                    maxValue: gameMatrix.maxValue,
                  ),
                ),
          ),
          padding: EdgeInsets.fromLTRB(
            fieldPadding,
            Constants.marginsNone,
            fieldPadding,
            Constants.marginsNone,
          ),
          child: gameValue == 0
              ? null
              : Center(
                  child: Text(
                    gameValue.toString(),
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
        );
      },
    );
  }

  double _calculateOpacity({required int value, required int maxValue}) {
    return value / maxValue;
  }
}
