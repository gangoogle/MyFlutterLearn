import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fultter_learn_3/res/list_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('title')),
        body: MyListBuilderContent(),
      ),
    );
  }
}

/**
 * 列表构造
 */
class MyListBuilderContent extends StatelessWidget {
  List<Widget> list;

  MyListBuilderContent() {
    list = new MyHomeContent()._getData();
  }

  Widget _listAdapter(BuildContext context, int index) {
    return this.list[index];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: list.length, itemBuilder: _listAdapter);
  }
}

class MyHomeContent extends StatelessWidget {
  List _getData() {
    var tempList = listData.map((e) {
      return ListTile(
        title: Text(e['title']),
        subtitle: Text(e['author']),
        leading: Image.network(e['imageUrl']),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: this._getData());
  }
}

class ListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.red,
      child: Text(
        '我说一个',
        style: TextStyle(fontSize: 28),
      ),
      padding: EdgeInsets.fromLTRB(0, 10, 20, 50),
    );
  }
}
