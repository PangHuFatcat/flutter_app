import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/model/carts.dart';
import 'package:provider/provider.dart';

class CartsListDemo extends StatelessWidget {
  static const routeName = '/carts-list-demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
      ),
      body: Consumer<CartsModel>(
        builder: (context, carts, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: carts.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(4),
                      child: ListTile(
                        title: Text(carts.items[index].name),
                        subtitle: Text('价格: ${carts.items[index].price}'),
                        trailing: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            carts.removeAt(index);
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
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(8, 8, 30, 8),
                height: 60,
                child: Text(
                  '总价: ${carts.totalPrice}',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
