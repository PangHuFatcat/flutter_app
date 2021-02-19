import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DoubanSlideViewDemo extends StatefulWidget {
  static const routeName = '/douban-slide-view-demo';

  @override
  _DoubanSlideViewDemoState createState() => _DoubanSlideViewDemoState();
}

class _DoubanSlideViewDemoState extends State<DoubanSlideViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          'Draggable',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('内容 $index'),
                );
              },
              itemCount: 20,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 1 / MediaQuery.of(context).size.height * 100,
            minChildSize: 1 / MediaQuery.of(context).size.height * 100,
            maxChildSize: 0.8,
            builder: (
              BuildContext context,
              ScrollController scrollController,
            ) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: Offset(0, 0),
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned.fill(
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text('抽屉 $index'),
                            );
                          },
                          controller: scrollController,
                          itemCount: 20,
                        ),
                      ),
                      Positioned(
                        top: 14,
                        child: Container(
                          width: 34,
                          height: 6,
                          decoration: BoxDecoration(
                              color: Color(0xff757575),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
