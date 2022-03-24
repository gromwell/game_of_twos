import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:game_of_twos/presentation/pages/home_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
