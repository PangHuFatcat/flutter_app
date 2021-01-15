import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/pages/login/index.dart';
import '../pages/search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MaterialButton(
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
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(
                context,
                Login.routeName,
                arguments: LoginArguments(id: 2333),
              );
            },
            child: Text('去登录'),
          )
        ],
      ),
    );
  }
}
