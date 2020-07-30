import 'package:belajar_ui_flutter/routing/const_routing.dart';
import 'package:belajar_ui_flutter/screens/OnBoarding.dart';
import 'package:belajar_ui_flutter/screens/Onboarding2.dart';
import 'package:belajar_ui_flutter/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoarding());
      case onBoardingRoute2:
        return MaterialPageRoute(builder: (_) => OnBOarding2());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
