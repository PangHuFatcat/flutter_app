import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

/*
* 酷安首页
*
* */

class CoolapkIndexDemo extends StatefulWidget {
  static const routeName = '/coolapk-index-demo';

  @override
  _CoolapkIndexDemoState createState() => _CoolapkIndexDemoState();
}

class _CoolapkIndexDemoState extends State<CoolapkIndexDemo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._tabController = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color(0xfff2f1f6)],
          ),
        ),
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: NestedScrollView(
              physics: BouncingScrollPhysics(),
              floatHeaderSlivers: true,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    titleSpacing: 0,
                    backgroundColor: Colors.white,
                    floating: true,
                    forceElevated: innerBoxIsScrolled,
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    title: IndexHeader(),
                  ),
                  SliverAppBar(
                    primary: false,
                    titleSpacing: 0,
                    backgroundColor: Colors.white,
                    pinned: true,
                    forceElevated: innerBoxIsScrolled,
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    title: IndexTabBar(this._tabController),
                  ),
                ];
              },
              body: TabBarView(
                physics: BouncingScrollPhysics(),
                controller: this._tabController,
                children: [
                  ListView.builder(
                    physics: BouncingScrollPhysics(),
                    // padding: const EdgeInsets.all(8),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                        color: Colors.blue[100 * (index % 9)],
                        height: 100,
                        child: Text('热门 item $index'),
                      );
                    },
                  ),
                  Text('推荐'),
                  Text('酷图'),
                  Text('热榜'),
                  Text('闲聊'),
                  Text('话题'),
                  Text('视频'),
                  Text('问答'),
                  Text('关注'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IndexHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            width: 36,
            height: 36,
            child: CircleAvatar(
              backgroundImage: AssetImage('./assets/images/1.jpg'),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 4,
                  color: Color(0xfff2f2f2),
                )),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: 36,
              decoration: BoxDecoration(
                  color: Color(0xfff2f2f2),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  Icon(Icons.search, size: 20, color: Color(0xff757575)),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xff757575),
                        fontSize: 14,
                      ),
                      cursorColor: Color(0xff757575),
                      decoration: InputDecoration(
                        hintText: '刺激战场',
                        isDense: true,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          Material(
            color: Colors.transparent,
            child: Ink(
              width: 36,
              height: 36,
              child: InkWell(
                borderRadius: BorderRadius.circular(18),
                child:
                    Icon(Icons.shopping_bag_outlined, color: Color(0xff757575)),
                onTap: () {},
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: Ink(
              width: 36,
              height: 36,
              child: InkWell(
                borderRadius: BorderRadius.circular(18),
                child: Icon(Icons.notifications_none, color: Color(0xff757575)),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IndexTabBar extends StatelessWidget {
  final TabController _tabController;

  IndexTabBar(this._tabController);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: TabBar(
        physics: BouncingScrollPhysics(),
        isScrollable: true,
        controller: this._tabController,
        labelColor: Color(0xff109d58),
        unselectedLabelColor: Color(0xff757575),
        indicatorPadding: EdgeInsets.all(100),
        labelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        indicator: UnderlineCoolapkTabIndicator(
          borderSide: BorderSide(color: Color(0xff109d58), width: 4),
          insets: EdgeInsets.fromLTRB(24, 0, 24, 5),
        ),
        tabs: [
          Tab(text: '热门'),
          Tab(text: '推荐'),
          Tab(text: '酷图'),
          Tab(text: '热榜'),
          Tab(text: '闲聊'),
          Tab(text: '话题'),
          Tab(text: '视频'),
          Tab(text: '问答'),
          Tab(text: '关注'),
        ],
      ),
    );
  }
}

class UnderlineCoolapkTabIndicator extends Decoration {
  const UnderlineCoolapkTabIndicator({
    this.borderSide = const BorderSide(width: 2.0, color: Colors.white),
    this.insets = EdgeInsets.zero,
  })  : assert(borderSide != null),
        assert(insets != null);
  final BorderSide borderSide;
  final EdgeInsetsGeometry insets;

  @override
  Decoration lerpFrom(Decoration a, double t) {
    if (a is UnderlineCoolapkTabIndicator) {
      return UnderlineCoolapkTabIndicator(
        borderSide: BorderSide.lerp(a.borderSide, borderSide, t),
        insets: EdgeInsetsGeometry.lerp(a.insets, insets, t),
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  Decoration lerpTo(Decoration b, double t) {
    if (b is UnderlineCoolapkTabIndicator) {
      return UnderlineCoolapkTabIndicator(
        borderSide: BorderSide.lerp(borderSide, b.borderSide, t),
        insets: EdgeInsetsGeometry.lerp(insets, b.insets, t),
      );
    }
    return super.lerpTo(b, t);
  }

  @override
  _UnderlineCoolapkPainter createBoxPainter([VoidCallback onChanged]) {
    return _UnderlineCoolapkPainter(this, onChanged);
  }

  Rect _indicatorRectFor(Rect rect, TextDirection textDirection) {
    assert(rect != null);
    assert(textDirection != null);
    final Rect indicator = insets.resolve(textDirection).deflateRect(rect);
    return Rect.fromLTWH(
      indicator.left,
      indicator.bottom - borderSide.width,
      indicator.width,
      borderSide.width,
    );
  }

  @override
  Path getClipPath(Rect rect, TextDirection textDirection) {
    return Path()..addRect(_indicatorRectFor(rect, textDirection));
  }
}

class _UnderlineCoolapkPainter extends BoxPainter {
  _UnderlineCoolapkPainter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  final UnderlineCoolapkTabIndicator decoration;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);
    final Rect rect = offset & configuration.size;
    final TextDirection textDirection = configuration.textDirection;
    final Rect indicator = decoration
        ._indicatorRectFor(rect, textDirection)
        .deflate(decoration.borderSide.width / 2.0);
    final Paint paint = decoration.borderSide.toPaint()
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(indicator.bottomLeft, indicator.bottomRight, paint);
  }
}
