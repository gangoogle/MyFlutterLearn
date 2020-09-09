import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AppContainer(),
      ),
    );
  }
}

class AppContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            color: Colors.red,
            child: Image.network(
              "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1598604420&di=9fb90559df79bd3baeb9ab03fc28cd1b&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Image.network(
                        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598614506440&di=68613e7d83a8d1c6b1ed8316ba4d92bb&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F86%2F10%2F01300000184180121920108394217.jpg"),
                  )),
              SizedBox(
                width: 5,
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                            "https://i1.hdslb.com/bfs/archive/a57d9b62df25cda5927e15e32af11eda493e2d01.jpg@336w_190h.webp"),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        child: Image.network(
                            "https://i2.hdslb.com/bfs/archive/cceb483e991698cff73e57e75e2fca9265fa61b2.jpg@336w_190h.webp"),
                      ),
                    ],
                  ))
            ],
          ))
        ],
      ),
    );
  }
}
