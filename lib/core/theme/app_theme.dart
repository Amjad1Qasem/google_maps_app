import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light => _theme();

  static ThemeData get dark => _theme();

  static ThemeData _theme() {
    return ThemeData(scaffoldBackgroundColor: Colors.white);
 
  }
}
