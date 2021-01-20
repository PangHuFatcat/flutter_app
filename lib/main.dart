import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './pages/navigation.dart';
import './pages/register/index.dart';
import './pages/login/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        NavigationView.routeName: (context) => NavigationView(),
        Login.routeName: (context) => Login(),
        Register.routeName: (context) => Register(),
      },
    );
  }
}
