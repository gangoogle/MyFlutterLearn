import 'package:flutter/material.dart';
import 'package:fultter_learn_3/tabs/pager/Home.dart';
import 'package:fultter_learn_3/tabs/pager/Me.dart';
import 'package:fultter_learn_3/tabs/pager/Setting.dart';

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabsState();
  }
}

class TabsState extends State<Tabs> {
  int currIndex = 0;

  var _Page_List = [HomePage(), MePage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),

      ),
      body: this._Page_List[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black38,
        onTap: (int index) {
          setState(() {
            this.currIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.child_care), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.adb), title: Text("安卓")),
          BottomNavigationBarItem(icon: Icon(Icons.textsms), title: Text("短信")),
        ],
      ),
    );
  }
}
