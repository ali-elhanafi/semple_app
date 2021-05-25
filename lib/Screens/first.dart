import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:owend_app/main.dart';

import 'Second.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.arrow_forward)],
        ),
        body: Center(
          child: _getList(),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen()),
                )));
  }
}

List<String> list1() {
  var _items = List<String>.generate(40, (index) => 'item $index');
  return _items;
}

Widget _getList() {
  var _listItems = list1();
  var listView = ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: _listItems.length,
    itemBuilder: (context, index) => ListTile(
      title: Text(_listItems[index]),
    ),
  );
  return listView;
}
