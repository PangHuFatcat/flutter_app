import 'package:flutter/material.dart';

/*
* CustomScrollView, SliverGrid, SliverList 练习demo
*
* */
class CustomScrollViewDemo extends StatelessWidget {
  static const routeName = '/custom-scroll-view-demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text('AppBar', style: TextStyle(color: Colors.white)),
            expandedHeight: 300,
            stretch: true,
            pinned: true,
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.green[500],
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              background: Image.asset(
                './assets/images/2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              child: Center(
                child: Text('使用非Sliver Widget'),
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
                  color: Colors.green[100 * (index % 9)],
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
                  color: Colors.green[100 * (index % 9)],
                  height: 100,
                  child: Text('list item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
