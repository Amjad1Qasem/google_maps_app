import 'package:department_doctor_app/core/routing/routs.dart';
import 'package:department_doctor_app/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case AppRouterPath.splachScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text('No rout defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
