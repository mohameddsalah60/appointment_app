import 'package:doc_doc/core/routing/app_routes.dart';
import 'package:doc_doc/features/authentication/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

import '../../features/on_boarding/presentation/views/on_boarding_view.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboarding:
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      default:
        return MaterialPageRoute(
          builder:
              (context) =>
                  const Scaffold(body: Center(child: Text('404 Not Found'))),
        );
    }
  }
}
