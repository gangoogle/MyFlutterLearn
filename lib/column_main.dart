import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('AppBar'),
          ),
          body: _Content()),
    ));
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        width: 400,
        color: Colors.amber,
        child: Row(
          children: [
            _TBlock(
              Icons.child_care,
              color: Colors.blue,
            ),
            Expanded(
                flex: 2,
                child: _TBlock(Icons.favorite_border, color: Colors.pink)),
            Expanded(
                flex: 2, child: _TBlock(Icons.title, color: Colors.tealAccent))
          ],
        ));
  }
}

class _TBlock extends StatelessWidget {
  double size;
  Color color;
  IconData icon;
  Color iconColor;

  _TBlock(this.icon,
      {this.color = Colors.yellow, this.size = 30, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Center(
        child: Icon(
          icon,
          size: size,
          color: iconColor,
        ),
      ),
    );
  }
}
