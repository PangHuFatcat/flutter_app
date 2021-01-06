import 'package:flutter/material.dart';
import '../pages/search.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('按钮'),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Search(
              title: '我是父组件传过来的值',
            ),
          ));
        },
      ),
    );
  }
}
