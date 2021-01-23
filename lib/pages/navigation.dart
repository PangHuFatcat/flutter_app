import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import './home.dart';
import './chart.dart';
import './mail.dart';
import './my.dart';

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
    Mail(),
    My(),
  ];

  void _handleChangeNavigationBar(val) {
    print(val);
    setState(() {
      _currentIndex = val;
    });
  }

  List<Widget> _navigationBottomList() {
    return <Widget>[
      NavigationBottom(
          index: 0,
          imageUrl: 'assets/images/camera.png',
          onPressed: _handleChangeNavigationBar),
      NavigationBottom(
          index: 1,
          imageUrl: 'assets/images/browser.png',
          onPressed: _handleChangeNavigationBar),
      NavigationBottom(
          index: 2,
          imageUrl: 'assets/images/mail.png',
          onPressed: _handleChangeNavigationBar),
      NavigationBottom(
          index: 3,
          imageUrl: 'assets/images/my.png',
          onPressed: _handleChangeNavigationBar),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final padding = data.padding;
    final size = data.size;
    final width = size.width;
    final navigationItemCount = _navigationBottomList().length;
    return Scaffold(
      body: _list[_currentIndex],
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFe6e6e6),
                  offset: Offset(0, 0),
                  blurRadius: 5,
                )
              ],
            ),
            child: Row(children: _navigationBottomList()),
          ),
          AnimatedPositioned(
            left: ((width / navigationItemCount) * _currentIndex) +
                (width / navigationItemCount / 2) -
                8,
            bottom: 5,
            child: Container(
              color: Color(0xFF9dc6af),
              width: 16,
              height: 3,
            ),
            duration: Duration(milliseconds: 200),
          )
        ],
      ),
    );
  }
}

class NavigationBottom extends StatelessWidget {
  final int index;
  final String imageUrl;
  final Function onPressed;

  NavigationBottom({this.index, this.imageUrl, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkResponse(
          splashFactory: InkRipple.splashFactory,
          radius: 42,
          onTap: () {
            onPressed(index);
          },
          child: Column(
            children: [
              SizedBox(height: 8),
              Container(
                width: 28,
                child: Image.asset(imageUrl),
              )
            ],
          ),
        ),
      ),
    );
  }
}
