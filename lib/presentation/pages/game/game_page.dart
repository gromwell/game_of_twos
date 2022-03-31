import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_twos/application/game/game_bloc.dart';
import 'package:game_of_twos/constants.dart';
import 'package:game_of_twos/presentation/my_scaffold.dart';
import 'package:game_of_twos/presentation/pages/game/scores_display.dart';

class GamePage extends StatelessWidget {
  const GamePage(this.axis);
  final int axis;

  @override
  Widget build(BuildContext context) {
    final double gameBoardSize = _getGameBoardSize(context);
    final double squareSize = gameBoardSize / axis;
    final double squarePadding = squareSize / 4;

    return BlocProvider(
      create: (context) => GameBloc(axis),
      child: GestureDetector(
        onVerticalDragEnd: (dragEndDetails) {
          final primaryVelocity = dragEndDetails.primaryVelocity;
          if (primaryVelocity != null) {
            if (primaryVelocity.isNegative) {
              context
                  .read<GameBloc>()
                  .add(const GameEvent.drag(Direction.left));
            } else {
              context
                  .read<GameBloc>()
                  .add(const GameEvent.drag(Direction.right));
            }
          }
        },
        onHorizontalDragEnd: (dragEndDetails) {
          final primaryVelocity = dragEndDetails.primaryVelocity;
          if (primaryVelocity != null) {
            if (primaryVelocity.isNegative) {
              context.read<GameBloc>().add(const GameEvent.drag(Direction.top));
            } else {
              context
                  .read<GameBloc>()
                  .add(const GameEvent.drag(Direction.bottom));
            }
          }
        },
        child: MyScaffold(
          body: Center(
            child: Container(
              alignment: Alignment.center,
              width: gameBoardSize,
              height: gameBoardSize,
              child: BlocBuilder<GameBloc, GameState>(
                builder: (context, state) {
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: axis,
                    ),
                    itemCount: axis * axis,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.fromLTRB(
                          squarePadding,
                          Constants.marginsNone,
                          squarePadding,
                          Constants.marginsNone,
                        ),
                        color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0),
                        child: state.gameSquares[index] == 0
                            ? null
                            : Center(
                                child:
                                    Text(state.gameSquares[index].toString()),
                              ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          bottomNavigationBar: ScoresDisplay(),
        ),
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
