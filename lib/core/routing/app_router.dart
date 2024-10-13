import 'package:department_doctor_app/core/routing/routs.dart';
import 'package:department_doctor_app/presentations/onboarding/ui/screen/onboarding_screen.dart';
import 'package:department_doctor_app/presentations/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case AppRouterPath.splachScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case AppRouterPath.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
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
