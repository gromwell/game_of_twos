import 'package:flutter/material.dart';
import 'package:game_of_twos/my_theme_data.dart';
import 'package:game_of_twos/presentation/routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tasks',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: MyThemeData.light,
      darkTheme: MyThemeData.dark,
    );
  }
}
