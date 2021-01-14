import 'package:flutter/material.dart';

/*
* CustomScrollView, SliverGrid, SliverList 练习demo
*
* */
class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              print(100 * (index % 9));
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                height: 100,
                child: Text('list item $index'),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
