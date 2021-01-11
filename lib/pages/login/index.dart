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
      body: Container(
        child: Center(
          child: Text('id: ${args?.id}'),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('./assets/images/cat.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
