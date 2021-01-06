import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {

        },
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: Text(
            'Chart',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
