import 'package:flutter/material.dart';

class LoginArguments {
  final int id;

  LoginArguments({this.id});
}

class Login extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    final LoginArguments args = ModalRoute.of(context).settings.arguments;
    print(args);

    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Center(
        child: Text('参数: ${args.id}'),
      ),
    );
  }
}
