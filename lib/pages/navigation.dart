import 'package:flutter/material.dart';
import './home.dart';
import './chart.dart';

class NavigationView extends StatefulWidget {
  static const routeName = '/';

  @override
  _NavigationViewState createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
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
    return Scaffold(
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
    );
  }
}
