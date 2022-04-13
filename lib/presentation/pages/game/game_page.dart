import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_twos/application/game/cubit/game_cubit.dart';
import 'package:game_of_twos/application/game/cubit/game_matrix.dart';
import 'package:game_of_twos/constants.dart';
import 'package:game_of_twos/presentation/my_scaffold.dart';
import 'package:game_of_twos/presentation/pages/game/game_gesture_detector.dart';
import 'package:game_of_twos/presentation/pages/game/game_over_alert_dialog.dart';
import 'package:game_of_twos/presentation/pages/game/scores_display.dart';

class GamePage extends StatelessWidget {
  const GamePage(this.size);
  final int size;

  @override
  Widget build(BuildContext context) {
    final double gameBoardSize = _getGameBoardSize(context);

    final blocListener = BlocListener<GameCubit, GameState>(
      listenWhen: (previous, current) =>
          previous.gameStatus == GameStatus.playing &&
          current.gameStatus == GameStatus.gameOver,
      listener: onGameOver,
      child: Game(
        gameBoardSize: gameBoardSize,
        size: size,
      ),
    );
    return BlocProvider(
      create: (context) => GameCubit(size),
      child: blocListener,
    );
  }

  void onGameOver(BuildContext context, GameState state) {
    void onPressed() {
      context.read<GameCubit>().reset();
      context.router.pop();
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return GameOverAlertDialog(
          onPressed: onPressed,
          score: state.score,
        );
      },
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
    return shorterEdge - Constants.gameSquarePadding * 2;
  }
}

class Game extends StatelessWidget {
  const Game({
    required this.gameBoardSize,
    required this.size,
  });

  final double gameBoardSize;
  final int size;

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
                return GameBoard(size: size);
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
  }) : super(key: key);

  final int size;

  @override
  Widget build(BuildContext context) {
    final GameMatrix gameMatrix = context.read<GameCubit>().state.gameMatrix;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: size,
        crossAxisSpacing: Constants.gameSquarePadding,
        mainAxisSpacing: Constants.gameSquarePadding,
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
          child: gameValue == 0
              ? null
              : Center(
                  child: AutoSizeText(
                    gameValue.toString(),
                    style: Theme.of(context).textTheme.headlineLarge,
                    maxLines: 1,
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
