import 'package:dawaiwala/screens/auth_screens/signup.dart';
import 'package:dawaiwala/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => SplashScreen());
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/signUp':
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
