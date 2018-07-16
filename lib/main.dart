import 'package:flutter/material.dart';
import './route/home.dart';

void main() => runApp(new MyApp());
// stateless 静态组件 入口函数
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { // 上下文
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber
      ),
      home: new HomePage(),
    );
  }
}
