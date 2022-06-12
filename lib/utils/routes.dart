import 'package:dinein/screens/auth/login.dart';
import 'package:dinein/screens/auth/user_detail.dart';
import 'package:dinein/screens/error_screen.dart';
import 'package:dinein/screens/feedback_screen.dart';
import 'package:dinein/screens/food_priority.dart';
import 'package:dinein/screens/order_histories_screen.dart';
import 'package:dinein/screens/order_history_screen.dart';
import 'package:dinein/screens/order_status.dart';
import 'package:dinein/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String login = "/login";
  static const String error = "/error";
  static const String userDetail = "/user";
  static const String orderFeedback = "/order/feedback";
  static const String foodPriority = "/order/priority";
  static const String welcomeScreen = "/welcome";
  static const String orderHistories = "/order/histories";
  static const String orderHistory = "/order/history";
  static const String orderStatus = "/order/status";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final uri = Uri.base;

    switch (uri.path) {
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
      case orderHistories:
        return MaterialPageRoute(builder: (context) {
          return OrderHistoriesScreen();
        });
      case orderHistory:
        return MaterialPageRoute(builder: (context) {
          return OrderHistoryScreen();
        });
      case orderStatus:
        final data = uri.queryParameters;
        return MaterialPageRoute(builder: (context) {
          return OrderStatusScreen(
            orderStatus: data['order_status'] == "PENDING_ORDERS"
                ? OrderStatus.PENDING_ORDERS
                : data['order_status'] == "PICKED_ORDERS"
                    ? OrderStatus.PICKED_ORDERS
                    : OrderStatus.COMPLETED_ORDERS,
          );
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
