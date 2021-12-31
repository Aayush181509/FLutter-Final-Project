import 'package:final_app/navigation/route_generator.dart';
import 'package:final_app/navigation/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: ourRouteGenerator,
      initialRoute: Routes.loginPage,
    );
  }
}
