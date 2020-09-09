import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingState();
  }
}

var num = 1;

class SettingState extends State {

  @override
  Widget build(BuildContext context) {
    print("Setting Build");
    return Container(
      child: Column(
        children: [
          Text("num:$num"),
          RaisedButton(
            child: Text("text"),
            onPressed: () => {setState(() {
              num++;
            })},
          )
        ],
      ),
    );
  }
}
