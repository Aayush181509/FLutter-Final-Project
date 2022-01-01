import 'package:final_app/navigation/routes.dart';
import 'package:final_app/utils/assets.dart';
import 'package:final_app/utils/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:final_app/utils/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getUsersLoggedInDataAndNavigate();
  }

  getUsersLoggedInDataAndNavigate() async {
    final isLoggedIn = await SharedPref.getUserData();
    if (isLoggedIn != null) {
      await Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamed(context, Routes.splashScreenPage);
      });
    } else {
      await Future.delayed(Duration(seconds: 2), () {
        Navigator.pushNamed(context, Routes.loginPage);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                  'https://scontent.fktm7-1.fna.fbcdn.net/v/t1.6435-9/38200127_936914206478902_8945096849434345472_n.png?_nc_cat=1&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=IVFtkJgPBcwAX8kVGWG&_nc_ht=scontent.fktm7-1.fna&oh=00_AT8aSvFckNmx3Nl_EhFnf-lU9n3zGqbw5jJ1fDzxu3ODow&oe=61F45503'),
              fit: BoxFit.fill,
            ),
          ),
          // child: Image.asset(Assets.facebookImage),
        ),
      ),
    );
  }
}
