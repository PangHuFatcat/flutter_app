import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// view
import './pages/navigation.dart';
import './pages/register/index.dart';
import './pages/login/index.dart';

// demo
import './pages/demo/custom-scroll-view-dmo.dart';
import './pages/demo/coolapk-index-demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
    return MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashFactory: InkRipple.splashFactory,
      ),
      routes: {
        NavigationView.routeName: (context) => NavigationView(),
        Login.routeName: (context) => Login(),
        Register.routeName: (context) => Register(),
        CustomScrollViewDemo.routeName: (context) => CustomScrollViewDemo(),
        CoolapkIndexDemo.routeName: (context) => CoolapkIndexDemo(),
      },
    );
  }
}
