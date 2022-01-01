import 'dart:async';

import 'package:final_app/navigation/routes.dart';
import 'package:final_app/ui/screen/login_screen.dart';
import 'package:final_app/ui/screen/splash_screen.dart';
import 'package:final_app/ui/screen/testing.dart';
import 'package:final_app/ui/screen/tiktok_ui_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route ourRouteGenerator(RouteSettings setting) {
  switch (setting.name) {
    case Routes.loginPage:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(),
      );
    case Routes.splashScreenPage:
      return MaterialPageRoute(
        builder: (context) => SplashScreen(),
      );
    // case Routes.tiktokUiScreen:
    //   return MaterialPageRoute(
    //     builder: (context) => TiktokUiScreen(),
    //   );
    case Routes.testingScreen:
      return MaterialPageRoute(
        builder: (context) => TestingWidget(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(),
      );
  }
}
