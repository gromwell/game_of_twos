import 'package:flutter/material.dart';

class GameOverAlertDialog extends StatelessWidget {
  const GameOverAlertDialog({
    required this.onPressed,
    required this.score,
    Key? key,
  }) : super(key: key);

  final int score;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Game over'),
      content: Text('Your score: $score'),
      actions: [
        TextButton(onPressed: onPressed, child: const Text('Try again'))
      ],
    );
  }
}
