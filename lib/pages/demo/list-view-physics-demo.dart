import 'package:flutter/material.dart';

/*
* physics: 参数
* BouncingScrollPhysics ：允许滚动超出边界，但之后内容会反弹回来。
* ClampingScrollPhysics ： 防止滚动超出边界，夹住 。
* AlwaysScrollableScrollPhysics ：始终响应用户的滚动。
* NeverScrollableScrollPhysics ：不响应用户的滚动。
*
* */

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('标题$index'),
        );
      },
      itemCount: 20,
    );
  }
}
