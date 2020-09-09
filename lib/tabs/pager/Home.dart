import 'package:flutter/material.dart';
import 'package:fultter_learn_3/tabs/pager/Catgoty.dart';
import '../pager/Search.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
    print("Home Build");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RaisedButton(
          color: Colors.blue,
          child: Text("跳转到搜索页面"),
          onPressed: () {
//            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//              return SearchPagers();
//            }));
            Navigator.pushNamed(context, "/search");
          },
        ),
        RaisedButton(
          color: Colors.blue,
          child: Text("跳转到表单页面-传值"),
          onPressed: () {
//            Navigator.of(context).push(MaterialPageRoute(builder: (context){
//              return Catgory(str:"传递数据");
//            }));
          Navigator.pushNamed(context, "/catgory",arguments: {"str":"设置得数据生效了"});

          },
        )
      ],
    );
  }
}
