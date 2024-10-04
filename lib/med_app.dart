import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/configurations/app_router.dart';
import 'core/configurations/pages_routes.dart';
import 'core/theme/application_theme_manager.dart';

class MedApp extends StatelessWidget {
  const MedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ApplicationThemeManager.theme,
          initialRoute: PagesRoutes.onBoardingView,
          onGenerateRoute: AppRouter.onGenerateRoute),
    );
  }
}
