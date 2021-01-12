import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        width: 100,
        height: 100,
        color: _toggle ? Colors.pink : Colors.blueAccent,
        duration: Duration(milliseconds: 300),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            this._toggle = !_toggle;
          });
        },
      ),
    );
  }
}
