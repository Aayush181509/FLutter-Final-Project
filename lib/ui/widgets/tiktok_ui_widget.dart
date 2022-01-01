import 'package:flutter/material.dart';

class TiktokUiWidget extends StatelessWidget {
  const TiktokUiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 100.0,
            padding: EdgeInsets.only(bottom: 15),
            color: Colors.yellow[300],
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(child: Container(color: Colors.green[300])),
                Container(
                  width: 100,
                  color: Colors.red[300],
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            color: Colors.blue[300],
          ),
        ],
      ),
    );
  }
}
