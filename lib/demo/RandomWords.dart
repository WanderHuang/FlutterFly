
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// 变化的部件
class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState(); // 创建state
}

// 状态
class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) { // render函数 渲染布局、样式
    return new Scaffold ( // 脚手架
      appBar: new AppBar(
        title: new Text('This is Headline'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved), // 右上角按钮
          new IconButton(icon: new Icon(Icons.open_in_new), onPressed: _newPage), // 右上角按钮
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() { // 构建words-list
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget _buildRow(WordPair pair) { // 构建row
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
       trailing: new Icon(
        alreadySaved ? Icons.alarm_on : Icons.alarm_off, // 内置图标
        color: alreadySaved ? Colors.lightGreen : Colors.lightGreen,
      ),
      onTap: () { // tap事件
        setState(() {
          alreadySaved ? _saved.remove(pair) :  _saved.add(pair);
        });
      },
    );
  }

  void _pushSaved() { // button按下事件
    Navigator.of(context).push(
      new MaterialPageRoute( // 路由跳转
        builder: (context) {
          final tiles = _saved.map(
            (pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = ListTile
            .divideTiles(
              context: context,
              tiles: tiles,
            )
            .toList();

          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saved Suggestions'),
            ),
            body: new ListView(children: divided),
          );
        },
      ),
    );
  }

  void _newPage() { // 打开新页面
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('New Page'),
            ),
            body: new Text('hello tabs')
          );
        }
      )
    );
  }
}