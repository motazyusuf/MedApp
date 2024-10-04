import 'package:flutter/material.dart';
import 'package:med_app/core/configurations/pages_routes.dart';

import '../../features/onboarding/presentation/views/on_boarding_view.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRoutes.onBoardingView:
        return MaterialPageRoute(builder: (context) => OnBoardingView());

      case PagesRoutes.loginView:
        return MaterialPageRoute(builder: (context) => Placeholder()
            // builder: (context) => LoginView()
            );

      default:
        return MaterialPageRoute(builder: (context) => Placeholder()
            // builder: (context) => SplashView()
            );
    }
  }
}
