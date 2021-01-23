import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/pages/login/index.dart';
import '../pages/search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Wrap(
    //   spacing: 8,
    //   children: [
    //     MaterialButton(
    //       color: Colors.blue,
    //       textColor: Colors.white,
    //       child: Text('非名命路由传值'),
    //       onPressed: () {
    //         Navigator.of(context).push(MaterialPageRoute(
    //           builder: (context) => Search(
    //             title: '我是父组件传过来的值',
    //           ),
    //         ));
    //       },
    //     ),
    //     MaterialButton(
    //       color: Colors.blue,
    //       textColor: Colors.white,
    //       onPressed: () {
    //         Navigator.pushNamed(
    //           context,
    //           Login.routeName,
    //           arguments: LoginArguments(id: 2333),
    //         );
    //       },
    //       child: Text('去登录'),
    //     )
    //   ],
    // )

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
                ListViewItem('练习1'),
                ListViewItem('练习2'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
                ListViewItem('练习3'),
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

  ListViewItem(this.name);

  @override
  Widget build(BuildContext context) {
    // GestureDetector(
    //   onTap: () {
    //     print('233');
    //   },
    //   child: Container(
    //     height: 50,
    //     margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
    //     alignment: Alignment.centerLeft,
    //     padding: EdgeInsets.only(left: 10, right: 4),
    //     decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: BorderRadius.circular(5),
    //     ),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Text(
    //           this.name,
    //           style: TextStyle(fontSize: 16, color: Colors.black87),
    //         ),
    //         Icon(Icons.keyboard_arrow_right, color: Colors.black87)
    //       ],
    //     ),
    //   ),
    // )

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
            onTap: () {},
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
