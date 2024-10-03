import 'package:flutter/material.dart';
import 'package:med_app/core/configurations/pages_routes.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRoutes.onBoardingView:
        return MaterialPageRoute(builder: (context) => Placeholder()
            // builder: (context) => OnBoardingView(), settings: settings
            );

      case PagesRoutes.loginView:
        return MaterialPageRoute(builder: (context) => Placeholder()
            // builder: (context) => LoginView(), settings: settings
            );

      default:
        return MaterialPageRoute(builder: (context) => Placeholder()
            // builder: (context) => SplashView(), settings: settings
            );
    }
  }
}
