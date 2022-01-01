import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        padding: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '@firstjonny',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Video title and some other stuff'),
            Row(
              children: [
                Icon(Icons.music_note, color: Colors.white, size: 15.0),
                Text('Artist name - Album name - song',
                    style: TextStyle(fontSize: 12.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
