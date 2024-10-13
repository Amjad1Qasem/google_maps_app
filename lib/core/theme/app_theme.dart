import 'package:department_doctor_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light => _theme();

  static ThemeData get dark => _theme();

  static ThemeData _theme() {
    return ThemeData(
        textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Cairo', // Use the local font family name
        fontWeight: FontWeight.w700,
        color: AppColors.prinmary,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Cairo', // Use the local font family name
        fontWeight: FontWeight.w400,
        color: AppColors.gray,
      ),
    ));
  }
}
