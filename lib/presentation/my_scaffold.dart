import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({required this.body, this.bottomSheet});
  final Widget body;
  final Widget? bottomSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Game of twos'),
      ),
      body: body,
      bottomSheet: bottomSheet,
    );
  }
}
