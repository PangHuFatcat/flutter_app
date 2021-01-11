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
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    color: Colors.green,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 10,
                    height: 10,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          RaisedButton(
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
