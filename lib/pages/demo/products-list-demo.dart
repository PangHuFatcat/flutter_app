import 'package:flutter/material.dart';
import 'package:flutter_app/pages/model/carts.dart';
import 'package:provider/provider.dart';

class ProductsListDemo extends StatelessWidget {
  static const routeName = '/products-list-demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
        actions: [
          IconButton(
            icon: Icon(Icons.card_giftcard),
            onPressed: () {
              Navigator.pushNamed(context, '/carts-list-demo');
            },
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(8),
            child: ListTile(
              title: Text('商品$index'),
              trailing: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Provider.of<CartsModel>(context, listen: false)
                      .add(CartsItem('商品$index', 1, 1.5));
                },
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                ),
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
