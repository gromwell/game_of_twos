import 'package:flutter/material.dart';
import 'package:game_of_twos/presentation/my_scaffold.dart';
import 'package:game_of_twos/presentation/pages/game/scores_display.dart';

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Container(),
      bottomSheet: ScoresDisplay(),
    );
  }
}
