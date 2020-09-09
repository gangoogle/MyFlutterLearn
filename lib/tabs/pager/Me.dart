import 'package:flutter/material.dart';

class MePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MeState();
  }
}

class MeState extends State {
  @override
  Widget build(BuildContext context) {
    print("Me Build");
    return Text('Me');
  }
}

