import 'package:dinein/screens/auth/login.dart';
import 'package:dinein/screens/auth/user_detail.dart';
import 'package:dinein/screens/error_screen.dart';
import 'package:dinein/screens/feedback_screen.dart';
import 'package:dinein/screens/food_priority.dart';
import 'package:dinein/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String login = "/login";
  static const String error = "/error";
  static const String userDetail = "/user";
  static const String orderFeedback = "/order/feedback";
  static const String foodPriority = "/order/priority";
  static const String welcomeScreen = "/welcome";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case error:
        return MaterialPageRoute(builder: (context) {
          return ErrorScreen();
        });
      case userDetail:
        return MaterialPageRoute(builder: (context) {
          return UserDetailScreen();
        });
      case orderFeedback:
        return MaterialPageRoute(builder: (context) {
          return OrderFeedbackScreen();
        });
      case foodPriority:
        return MaterialPageRoute(builder: (context) {
          return FoodPriorityScreen();
        });
      case welcomeScreen:
        return MaterialPageRoute(builder: (context) {
          return WelcomeScreen();
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
