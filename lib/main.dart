import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fultter_learn_3/image_dart.dart';

void main() => runApp(MyImageApp());

class MyHomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.pink),
        title: 'title',
        home: Scaffold(
          appBar: AppBar(
            title: Text('title'),
          ),
          body: new MyApp(),
        ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(
        '文本sdsdsdsdsdssssdssdsdsdsdsdssdsds',
        textAlign: TextAlign.center,
        overflow: TextOverflow.fade,
        maxLines: 1,
        textScaleFactor: 2,
        style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.pink,
            fontSize: 16,
            letterSpacing: 5,
            decorationColor: Colors.yellow,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.solid,
            fontWeight: FontWeight.bold),
      ),
      width: 300,
      alignment: Alignment.bottomCenter,
      height: 300,
      transform: Matrix4.diagonal3Values(1, 1, 1),
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Colors.green,
          border: Border.all(color: Colors.blue, width: 2)),
    ));
  }
}
