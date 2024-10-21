import 'package:flutter/material.dart';

class ThemeUtils {
  // Utility method to get TextTheme from the context
  static TextTheme textTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }

  // Utility method to get ColorScheme from the context
  static ColorScheme colorScheme(BuildContext context) {
    return Theme.of(context).colorScheme;
  }
}
