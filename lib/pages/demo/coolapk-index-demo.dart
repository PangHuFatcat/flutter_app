import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

/*
* 酷安首页
*
* */
class CoolapkIndexDemo extends StatelessWidget {
  static const routeName = '/coolapk-index-demo';

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: IndexHeader(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IndexHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
          width: 36,
          height: 36,
          child: CircleAvatar(
            backgroundImage: AssetImage('./assets/images/1.jpg'),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                width: 4,
                color: Color(0xfff2f2f2),
              )),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            height: 36,
            decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Icon(Icons.search, size: 20, color: Color(0xff757575)),
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xff757575),
                      fontSize: 14,
                    ),
                    cursorColor: Color(0xff757575),
                    decoration: InputDecoration(
                      hintText: '刺激战场',
                      isDense: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 10),
        Material(
          child: Ink(
            width: 36,
            height: 36,
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              child:
                  Icon(Icons.shopping_bag_outlined, color: Color(0xff757575)),
              onTap: () {},
            ),
          ),
        ),
        Material(
          child: Ink(
            width: 36,
            height: 36,
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              child: Icon(Icons.notifications_none, color: Color(0xff757575)),
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
