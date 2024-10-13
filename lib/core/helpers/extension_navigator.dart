import 'package:flutter/material.dart';

extension NewNavigation on BuildContext {
  Future<dynamic> goNamed(String name, {Object? argument}) =>
      Navigator.of(this).popAndPushNamed(name, arguments: argument);

  Future<dynamic> pushNamed(String name, {Object? argument}) =>
      Navigator.of(this).pushNamed(name, arguments: argument);

  Future<dynamic> pushReplacementNamed(String name, {Object? argument}) =>
      Navigator.of(this).pushReplacementNamed(name, arguments: argument);

  Future<dynamic> pushNamedAndRemoveUntil(
    String name, {
    required RoutePredicate predicate,
    Object? arguments,
  }) =>
      Navigator.of(this).pushNamedAndRemoveUntil(
        name,
        predicate,
        arguments: arguments,
      );

  void pop() => Navigator.of(this).pop();
}
