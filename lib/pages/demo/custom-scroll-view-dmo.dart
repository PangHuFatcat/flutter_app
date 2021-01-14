import 'package:flutter/material.dart';

/*
* CustomScrollView, SliverGrid, SliverList 练习demo
*
* */
class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          title: Text('胖虎'),
          expandedHeight: 300,
          stretch: true,
          pinned: true,
          backgroundColor: Colors.pink[500],
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],
            background: Image.asset(
              './assets/images/cat.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        ),
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
                color: Colors.pink[100 * (index % 9)],
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
                color: Colors.pink[100 * (index % 9)],
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
