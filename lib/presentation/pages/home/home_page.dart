import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:game_of_twos/presentation/my_scaffold.dart';
import 'package:game_of_twos/presentation/routes/app_router.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [StartGameButton()],
      ),
    );
  }
}

class StartGameButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 100.0,
      onPressed: () => context.router.push(GameRoute(size: 3)),
      icon: const Icon(
        Icons.play_arrow,
      ),
    );
  }
}
