import 'package:flutter/material.dart';
import '../tab/home.dart';
import '../tab/photo.dart';
import '../tab/video.dart';

// 主页
class HomePage extends StatefulWidget {

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  final List menus = [
    {
      'value': 1,
      'text': 'ICON 1'
    },
    {
      'value': 2,
      'text': 'ICON 2'
    },
    {
      'value': 3,
      'text': 'ICON 3'
    }
  ];
  final List<Widget> widgets = <Widget>[
    new HomeTab(),
    new PhotoTab(),
    new VideoTab()
  ];

  final List<Widget> tabs =  <Widget>[
    Tab(icon: Icon(Icons.home)),
    Tab(icon: Icon(Icons.photo)),
    Tab(icon: Icon(Icons.video_call)),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              new PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return menus.map((menu) {
                    return PopupMenuItem(
                      value: menu['value'],
                      child: new Text(menu['text']),
                    );
                  }).toList();
                },
              )
            ],
            bottom: TabBar(
              tabs: tabs
            ),
            title: Text('XX信息系统'),
          ),
          body: TabBarView(
            children: widgets,
          ),
        ),
      ),
    );
  }
}