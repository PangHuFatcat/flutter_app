import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              child: Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
            ),
          ),
          Positioned.fill(
            child: Container(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              children: [
                ListViewItem(
                  name: '自定义滚动视图',
                  onTap: () {
                    Navigator.pushNamed(context, '/custom-scroll-view-demo');
                  },
                ),
                ListViewItem(
                  name: '仿酷安首页',
                  onTap: () {
                    Navigator.pushNamed(context, '/coolapk-index-demo');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ListViewItem extends StatelessWidget {
  final String name;

  final Function onTap;

  ListViewItem({this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      color: Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: this.onTap,
            child: Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, right: 4),
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.name,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  Icon(Icons.keyboard_arrow_right, color: Colors.black87)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
