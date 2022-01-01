import 'package:final_app/models/video_model/video_hit.dart';
import 'package:final_app/ui/screen/video_player_test.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/actions_toolbar.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/buttom_toolbar.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/video_description.dart';
import 'package:flutter/material.dart';

class TiktokUiWidget extends StatelessWidget {
  const TiktokUiWidget({Key? key, required this.video}) : super(key: key);
  final VideoHit video;
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
  Widget get middleSection => Container(
        child: Stack(
          children: [
            VideoApp(video: video),
            Positioned(
              bottom: 0,
              left: 0,
              child: VideoDescription(video: video),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: ActionsToolbar(video: video),
            ),
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
          Expanded(child: middleSection),
          ButtomToolbar(),
        ],
      ),
    );
  }
}
