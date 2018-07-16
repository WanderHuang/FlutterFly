import 'package:flutter/material.dart';

class VideoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              height: 200.0,
              color: Colors.yellow,
              child: Text('视频一'),
            ),
            Container(
              height: 200.0,
              color: Colors.green,
              child: Text('视频二'),
            ),
            Container(
              height: 200.0,
              color: Colors.red,
              child: Text('视频三'),
            ),
            Container(
              height: 200.0,
              color: Colors.blue,
              child: Text('视频四'),
            )
          ],
        )
      );
  }
}