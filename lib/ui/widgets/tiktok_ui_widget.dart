import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/actions_toolbar.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/buttom_toolbar.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/video_description.dart';
import 'package:flutter/material.dart';

class TiktokUiWidget extends StatelessWidget {
  const TiktokUiWidget({Key? key}) : super(key: key);

  Widget get topSection => Container(
        height: 100.0,
        padding: EdgeInsets.only(bottom: 15.0),
        alignment: Alignment(0.0, 1.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Following'),
              Container(
                width: 15.0,
              ),
              Text('For you',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold))
            ]),
      );
  Widget get middleSection => Expanded(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1568651872875-2b0352849bf6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2ltcGxlJTIwZGVzaWdufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              VideoDescription(),
              ActionsToolbar(),
            ],
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          topSection,
          middleSection,
          ButtomToolbar(),
        ],
      ),
    );
  }
}
