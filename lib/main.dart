import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './pages/home.dart';
import './pages/chart.dart';
import './pages/register/index.dart';
import './pages/login/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List _list = [
    Home(),
    Chart(),
  ];

  void _handleChangeNavigationBar(val) {
    setState(() {
      _currentIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      routes: {
        '/login': (context) => Login()
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
        ),
        body: _list[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _handleChangeNavigationBar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              title: Text("Chart"),
            ),
          ],
          iconSize: 24,
          fixedColor: Colors.green,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
