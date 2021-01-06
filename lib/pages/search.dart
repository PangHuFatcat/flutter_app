import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  final String title;

  Search({this.title});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(this.widget.title),
          ),
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('关闭'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
