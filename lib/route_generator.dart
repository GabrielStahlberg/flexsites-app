import 'package:flexsites_app/ui/screens/home/home_screen.dart';
import 'package:flexsites_app/ui/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String HOME_ROUTE = "/home_screen";
  static const String LOGIN_ROUTE = "/login_screen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch(settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => const HomeScreen()
        );
      case HOME_ROUTE:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen()
        );
      case LOGIN_ROUTE:
        return MaterialPageRoute(
            builder: (_) => const LoginScreen()
        );
      default:
        return _routeError();
    }
  }

  static Route<dynamic> _routeError() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("Screen Not Found!"),),
          body: const Center(
            child: Text("Screen Not Found!"),
          ),
        );
      }
    );
  }
}