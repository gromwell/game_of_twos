import 'package:flutter/material.dart';
import 'package:game_of_twos/constants.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({required this.body, this.bottomSheet});
  final Widget body;
  final Widget? bottomSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(Constants.appTitle),
      ),
      body: body,
      bottomSheet: bottomSheet,
    );
  }
}
