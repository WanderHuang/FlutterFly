import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
    State<StatefulWidget> createState() => new HomeTabListState();
}

class HomeTabListState extends State<HomeTab> {

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              height: 200.0,
              color: Colors.red,
              child: Text('新闻一'),
            ),
            Container(
              height: 200.0,
              color: Colors.blue,
              child: Text('新闻二'),
            ),
            Container(
              height: 200.0,
              color: Colors.green,
              child: Text('新闻三'),
            ),
            Container(
              height: 200.0,
              color: Colors.yellow,
              child: Text('新闻四'),
            )
          ],
        )
      );
    }
}