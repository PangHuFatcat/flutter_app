import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(12, 6, 12, 0),
        child: Wrap(
          spacing: 12,
          children: [
            MyButton('按钮2'),
            MyButton('按钮23'),
            MyButton('按钮'),
            MyButton('按钮2333'),
            MyButton('按'),
            MyButton('按钮4'),
            MyButton('按钮4'),
            MyButton('按钮4'),
            MyButton('按钮4'),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
