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
        body: HomePage(),
      ),
    );
  }
}

int num = 0;

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeSate();
  }
}

class HomeSate extends State<HomePage> {
  var list = new List();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: this.list.map((value) {
            return Text("$value");
          }).toList(),
        ),
        RaisedButton(
          child: Text('按钮'),
          onPressed: () => {
            setState(() {
                list.add('tes');
            }),
          },
        )
      ],
    );
  }
}
