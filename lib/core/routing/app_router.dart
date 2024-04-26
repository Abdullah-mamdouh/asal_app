import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../features/auth/ui/login_screen/login_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreen:
        return PageTransition(
          type: PageTransitionType.leftToRightWithFade,duration: Duration(milliseconds:500 ),
          child: const LoginScreen(),);
      case Routes.signupScreen:
        return PageTransition(
          type: PageTransitionType.bottomToTop,duration: Duration(milliseconds:500 ),
          child: const SizedBox(),);
      case Routes.homeScreen:
        return PageTransition(
          type: PageTransitionType.leftToRightWithFade, duration: Duration(milliseconds:500 ),
          child: const SizedBox(),);
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
