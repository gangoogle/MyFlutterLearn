import 'package:flutter/material.dart';

class Catgory extends StatelessWidget {
  final arguments;

  Catgory({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("分类列表"),
      ),
      body: Container(
        child: Text(arguments['str']),
      ),
    );
  }
}
