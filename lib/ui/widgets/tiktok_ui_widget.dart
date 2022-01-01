import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/actions_toolbar.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/buttom_toolbar.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/video_description.dart';
import 'package:flutter/material.dart';

class TiktokUiWidget extends StatelessWidget {
  const TiktokUiWidget({Key? key}) : super(key: key);

  Widget get topSection => Container(
        height: 100.0,
        padding: EdgeInsets.only(bottom: 15),
        color: Colors.yellow[300],
      );
  Widget get middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            VideoDescription(),
            ActionsToolbar(),
          ],
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
