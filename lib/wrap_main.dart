import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
        body: MyContent(),
      ),
    );
  }
}

class MyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Wrap(
        runAlignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 10,
        children: [
          MyButton('歌个'),
          MyButton('的'),
          MyButton('大速度'),
          MyButton('是'),
          MyButton('多少'),
          MyButton('黑鬼'),
          MyButton('鹅为'),
          MyButton('但是'),
          MyButton('手动实'),
          MyButton('大速度'),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  String title;

  MyButton(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: RaisedButton(
        child: Text(this.title),
        textColor: Colors.yellow,
        color: Colors.red,
        onPressed: () {},
      ),
    );
  }
}
