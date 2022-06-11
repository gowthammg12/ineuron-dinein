import 'package:dinein/screens/auth/login.dart';
import 'package:dinein/screens/error_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String login = "/login";
  static const String error = "/error";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case error:
        return MaterialPageRoute(builder: (context) {
          return ErrorScreen();
        });
      case login:
      case "/":
      default:
        return MaterialPageRoute(builder: (context) {
          return LoginScreen();
        });
    }
  }
}
