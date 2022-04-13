import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_of_twos/presentation/my_scaffold.dart';
import 'package:game_of_twos/presentation/routes/app_router.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController gameSizeController = TextEditingController(text: '3');

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Created by Michał Nawrot. Press the play button to start. Use drag moves to play.',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: gameSizeController,
                decoration: const InputDecoration(
                  labelText: 'Game size',
                  icon: Icon(Icons.casino),
                ),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter number between 3-5';
                  }
                  if (int.parse(value) < 3) {
                    return 'Value must be greater than 2';
                  }
                  if (int.parse(value) > 5) {
                    return 'Value must be less than 6';
                  }
                  return null;
                },
              ),
            ),
            IconButton(
              iconSize: 100.0,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.router.push(
                    GameRoute(size: int.parse(gameSizeController.text)),
                  );
                }
              },
              icon: const Icon(
                Icons.play_arrow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
