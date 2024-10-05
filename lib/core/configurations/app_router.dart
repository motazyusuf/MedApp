import 'package:flutter/material.dart';
import 'package:med_app/core/configurations/pages_routes.dart';
import 'package:med_app/features/login/presentation/views/login_view.dart';

import '../../features/onboarding/presentation/views/on_boarding_view.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRoutes.onBoardingView:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingView(), settings: settings);

      case PagesRoutes.loginView:
        return MaterialPageRoute(
            builder: (context) => const LoginView(), settings: settings);

      default:
        return MaterialPageRoute(builder: (context) => const Placeholder()
            // builder: (context) => SplashView()
            );
    }
  }
}
