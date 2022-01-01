import 'package:flutter/material.dart';

class ActionsToolbar extends StatelessWidget {
  const ActionsToolbar({Key? key}) : super(key: key);

  Widget _getSocialAction({String? title, IconData? icon, bool? isShare}) {
    return Container(
        margin: EdgeInsets.only(top: 15.0),
        width: 60.0,
        height: 60.0,
        child: Column(children: [
          Icon(icon,
              size: isShare ?? false ? 30 : 35.0, color: Colors.grey[300]),
          Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Text(title.toString(), style: TextStyle(fontSize: 12.0)),
          )
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getSocialAction(title: '3.2k', icon: Icons.favorite, isShare: false),
          _getSocialAction(
              title: '58', icon: Icons.chat_rounded, isShare: false),
          _getSocialAction(title: 'Share', icon: Icons.share, isShare: true),
        ],
      ),
    );
  }
}
