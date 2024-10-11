import 'package:department_doctor_app/core/routing/app_router.dart';
import 'package:department_doctor_app/core/routing/routs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepApp extends StatelessWidget {
  const DepApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    // AppRouter appRouter =AppRouter();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doctor App',
        onGenerateRoute: appRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: AppRouterPath.splachScreen,
      ),
    );
  }
}
