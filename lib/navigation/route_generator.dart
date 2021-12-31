import 'dart:async';

import 'package:final_app/navigation/routes.dart';
import 'package:final_app/ui/screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route ourRouteGenerator(RouteSettings setting) {
  switch (setting.name) {
    case Routes.loginPage:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(),
      );
  }
}
