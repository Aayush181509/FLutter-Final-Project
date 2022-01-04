import 'package:final_app/navigation/routes.dart';
import 'package:flutter/material.dart';

class ButtomToolbar extends StatefulWidget {
  const ButtomToolbar({Key? key}) : super(key: key);
  static const double NavigationIconSize = 25.0;
  static const double CreateButtonWidth = 38.0;

  @override
  State<ButtomToolbar> createState() => _ButtomToolbarState();
}

class _ButtomToolbarState extends State<ButtomToolbar> {
  Widget get customCreateIcon => Container(
      width: 45.0,
      height: 27.0,
      child: Stack(children: [
        Container(
            margin: EdgeInsets.only(left: 10.0),
            width: ButtomToolbar.CreateButtonWidth,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 45, 108),
                borderRadius: BorderRadius.circular(7.0))),
        Container(
            margin: EdgeInsets.only(right: 10.0),
            width: ButtomToolbar.CreateButtonWidth,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 211, 234),
                borderRadius: BorderRadius.circular(7.0))),
        Center(
            child: Container(
          height: double.infinity,
          width: ButtomToolbar.CreateButtonWidth,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(7.0)),
          child: Icon(
            Icons.add,
            size: 20.0,
          ),
        )),
      ]));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Container(
        margin: EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.testingScreen);
                },
                child: Icon(Icons.home,
                    color: Colors.white,
                    size: ButtomToolbar.NavigationIconSize)),
            InkWell(
                onTap: () {
                  Navigator.popAndPushNamed(context, Routes.settingScreen);
                },
                child: Icon(Icons.search,
                    color: Colors.white,
                    size: ButtomToolbar.NavigationIconSize)),
            InkWell(child: customCreateIcon),
            InkWell(
              child: Icon(Icons.message_sharp,
                  color: Colors.white, size: ButtomToolbar.NavigationIconSize),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.userScreen);
              },
              child: Icon(Icons.person_pin,
                  color: Colors.white, size: ButtomToolbar.NavigationIconSize),
            )
          ],
        ),
      ),
    );
  }
}
