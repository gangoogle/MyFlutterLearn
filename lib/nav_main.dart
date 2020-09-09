import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fultter_learn_3/tabs/Tabs.dart';
import 'package:fultter_learn_3/tabs/pager/Catgoty.dart';
import 'package:fultter_learn_3/tabs/pager/Search.dart';

/**
 * 导航及导航传值
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = {
    '/search': (context) => SearchPagers(),
    '/catgory': (context,{arguments}) => Catgory(arguments:arguments),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        // ignore: missing_return
        final Function pageContentBuilder = this.routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            return route;
          } else {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context));
            return route;
          }
        }
      },
    );
  }
}
