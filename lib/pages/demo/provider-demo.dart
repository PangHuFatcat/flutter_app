import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/count.dart';

class ProviderDemo extends StatelessWidget {
  static const routeName = '/provider-demo';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountModel(),
      child: MyCount(),
    );
  }
}

class MyCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Consumer<CountModel>(
        builder: (context, cart, child) {
          return Center(
            child: Text('${cart.count}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Provider.of<CountModel>(context, listen: false).increase();
        },
      ),
    );
  }
}
