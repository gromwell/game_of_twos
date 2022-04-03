import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_twos/application/game/cubit/game_cubit.dart';
import 'package:game_of_twos/constants.dart';
import 'package:game_of_twos/presentation/my_scaffold.dart';
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
    return shorterEdge;
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
    return GestureDetector(
      onVerticalDragEnd: (dragEndDetails) {
        final primaryVelocity = dragEndDetails.primaryVelocity;
        if (primaryVelocity != null) {
          if (primaryVelocity.isNegative) {
            context.read<GameCubit>().drag(Direction.top);
          } else {
            context.read<GameCubit>().drag(Direction.bottom);
          }
        }
      },
      onHorizontalDragEnd: (dragEndDetails) {
        final primaryVelocity = dragEndDetails.primaryVelocity;
        if (primaryVelocity != null) {
          if (primaryVelocity.isNegative) {
            context.read<GameCubit>().drag(Direction.left);
          } else {
            context.read<GameCubit>().drag(Direction.right);
          }
        }
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
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: size,
      ),
      itemCount: size * size,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.fromLTRB(
            fieldPadding,
            Constants.marginsNone,
            fieldPadding,
            Constants.marginsNone,
          ),
          color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
          child: context
                      .read<GameCubit>()
                      .state
                      .gameMatrix
                      .getAtPosition(position: index) ==
                  0
              ? null
              : Center(
                  child: Text(
                    context
                        .read<GameCubit>()
                        .state
                        .gameMatrix
                        .getAtPosition(position: index)
                        .toString(),
                  ),
                ),
        );
      },
    );
  }
}
