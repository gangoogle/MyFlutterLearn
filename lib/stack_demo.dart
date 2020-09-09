import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('appBar'),
        ),
        body: AppContent(),
      ),
    );
  }
}

class AppContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: [
          Positioned(
              left: 30,
              child: Icon(
                Icons.satellite,
                size: 40,
                color: Colors.white,
              )),
          Positioned(
            bottom: 0,
              left: 100,
              child: Icon(
                Icons.search,
                size: 40,
                color: Colors.orange,
              )),
          Positioned(
              right: 10,
              bottom: 100,
              child: Icon(
                Icons.zoom_out_map,
                size: 40,
                color: Colors.yellow,
              ))
        ],
      ),
    ));
  }
}
