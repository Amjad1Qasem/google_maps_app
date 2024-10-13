import 'package:department_doctor_app/core/routing/app_router.dart';
import 'package:department_doctor_app/core/routing/routs.dart';
import 'package:department_doctor_app/core/theme/app_colors.dart';
import 'package:department_doctor_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepApp extends StatelessWidget {
  const DepApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doctor App',
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        onGenerateRoute: appRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: AppRouterPath.onBoardingScreen,
      ),
    );
  }
}
