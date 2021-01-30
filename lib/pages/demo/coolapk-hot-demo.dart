import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class CoolapkHotDemo extends StatelessWidget {
  static const routeName = '/coolapk-hot-demo';

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
          child: CoolapkHot(),
        ),
      ),
    );
  }
}

class CoolapkHot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.green,
      // child: Image.asset(
      //   'assets/images/cat.jpg',
      //   fit: BoxFit.cover,
      // ),
    );
  }
}
