import 'package:flutter/material.dart';

class NestedNavigatorDemo extends StatelessWidget {
  static const routeName = '/nested-navigator-demo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('嵌套 Navigator'),
      ),
      body: Center(
        child: Text('嵌套路由'),
      ),
    );
  }
}
