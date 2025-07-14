import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/routing/route.dart';
import 'package:flutter_complete_project/featurs/login/ui/logicScreen.dart';
import 'package:flutter_complete_project/featurs/onBoarding/ui/onBoardingScreen.dart';

class AppRoute {
  Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => Onboardingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const Logicscreen());
      default:
        return MaterialPageRoute(
          builder:
              (context) => Scaffold(
                body: Center(
                  child: Text("No route defind for ${setting.name}"),
                ),
              ),
        );
    }
  }
}
