import 'package:flutter/material.dart';

class MyImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'material',
      home: Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: ClipOval(
        child: Image.asset(
          'images/a.png',
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
