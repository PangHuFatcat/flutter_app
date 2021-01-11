import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  List<Widget> _getData() {
    List<Widget> list = List();
    for (var i = 0; i < 100; i++) {
      list.add(ListTile(
        leading: Image.asset('./assets/images/1.jpg'),
        title: Text('标题'),
        subtitle: Text('小标题'),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: ListView(
        children: this._getData(),
      ),
    );
  }
}
