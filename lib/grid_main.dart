import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fultter_learn_3/res/list_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'matrialApp',
      color: Colors.pinkAccent,
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.yellow,
          title: Text('appbar'),
        ),
        body: Container(
          child: LayoutDemo(),
        ),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  List realList;

  LayoutDemo() {
    realList = listData;
  }

  Widget _buildItem(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.network(realList[index]['imageUrl']),
          SizedBox(
            height: 5,
          ),
          Text(
            realList[index]['title'],
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Text(
            realList[index]['author'],
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }

  List<Widget> _getGridData() {
    var tempList = listData.map((value) {
      return Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.network(value['imageUrl']),
            SizedBox(
              height: 5,
            ),
            Text(
              value['title'],
              style: TextStyle(fontSize: 20,color: Colors.pink),
              textAlign: TextAlign.center,
            ),
            Text(
              value['author'],
              style: TextStyle(fontSize: 15,backgroundColor: Colors.red),
              textAlign: TextAlign.start,
            )
          ],
        ),
      );
    });
    print(tempList);
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
          ),
          itemCount: realList.length,
          itemBuilder: _buildItem,
        )
    );
  }
}
