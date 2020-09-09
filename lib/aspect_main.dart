import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *description 描述
 *email 1150902820@qq.com
 *author zgyi
 *date 2020/9/2
 */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('text'),
        ),
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Content(),
      Content(),
    ]);
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                  child: Image.network(
                      'https://i2.hdslb.com/bfs/archive/e306dfbb354d4e7c23d0bc7356182be771681f85.jpg@336w_190h.webp')),
              Row(
                children: [
                  Icon(
                    Icons.child_care,
                    size: 80,
                  ),
                  Column(
                    children: [
                      Text(
                        '标题',
                        style: TextStyle(fontSize: 24, color: Colors.yellow),
                      ),
                      Text(
                        '地址',
                        style: TextStyle(fontSize: 18, color: Colors.pink),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
