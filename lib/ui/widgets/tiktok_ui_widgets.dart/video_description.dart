import 'package:final_app/models/video_model/video_hit.dart';
import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({Key? key, required this.video}) : super(key: key);
  final VideoHit video;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(left: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '@' + video.user,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(video.tags),
          Row(
            children: [
              Icon(Icons.music_note, color: Colors.white, size: 15.0),
              Text('Ed-sheeran - Photograph', style: TextStyle(fontSize: 12.0)),
            ],
          ),
        ],
      ),
    );
  }
}
