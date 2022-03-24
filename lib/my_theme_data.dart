import 'package:flutter/material.dart';

abstract class MyThemeData {
  static ThemeData get light {
    return ThemeData.light().copyWith();
  }

  static ThemeData get dark {
    return ThemeData.dark().copyWith();
  }
}
