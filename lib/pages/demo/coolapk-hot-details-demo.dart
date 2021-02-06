import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'coolapk-index-demo.dart';

class CoolapkHotDetailsDemo extends StatefulWidget {
  static const routeName = '/coolapk-hot-details-demo';

  @override
  _CoolapkHotDetailsDemoState createState() => _CoolapkHotDetailsDemoState();
}

class _CoolapkHotDetailsDemoState extends State<CoolapkHotDetailsDemo>
    with SingleTickerProviderStateMixin {
  String _str = '''
贵妃糕（烤年糕）

度娘了一下贵妃膏是跟杨贵妃有关
杨贵妃喜欢吃这个
所以叫贵妃膏
有点道理
一骑红尘妃子笑

软软糯糯
蔓越莓与葡萄仁的酸甜
给这份糕点带来了甜而不腻的口感

果仁部分自己可以随意变更
花生仁不太建议放，有点不是很搭
因为有剩的，就一起放了
以下是一盘28*28金盘的量

材料：
糯米粉：400克
牛奶：410克
玉米油：70克
鸡蛋：3个（60克左右的）
炼奶：30克（可换成等量糖）
红糖粉（白糖均可）：90克
蔓越莓+葡萄干：200～250克（比例随意，蔓越莓多一点）

1.烤箱预热170度，烤箱真实的温度，而不是你调的那个温度。
2.红糖建议用糖粉，糖块的话要先切碎和牛奶加热溶解一下，溶解好记得降温一下，糖粉的话直接和牛奶先搅匀融化，再加油、鸡蛋、炼奶、糯米粉进去搅匀即可，尽量搅到没有大量颗粒状，还是会有少量颗粒状的。
3.烤盘里垫油纸
4.取一个盆，称一下重量，把面糊过筛进去，筛子里残留的面糊用刮刀压一下过筛，再称一下盆的质量，你就知道倒一半是多少了。
5.倒一半到烤盘里，分别向四个角落倾斜一下，就匀了，放进去烤箱烤12分钟，再拿出来，均匀的撒果仁上去，再倒剩下的面糊进去，用刮刀稍微整理一下。再送进去烤箱烤30分钟。
6.出炉倒扣到架子上放凉，放凉了再切割即可

制作没有难度，吃起来也不错的一款小糕点。
  ''';
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    this._tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff757575)),
        title: Text('动态', style: TextStyle(color: Color(0xff757575))),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/1.jpg'),
                            child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Positioned(
                                  bottom: 0,
                                  right: -5,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    child: CircleAvatar(
                                      child: Image.asset(
                                        'assets/images/tick.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '胖虎',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 2),
                              DefaultTextStyle(
                                style: TextStyle(
                                  color: Color(0xffbebebe),
                                  fontSize: 12,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('来自头条推荐'),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.smartphone,
                                      color: Color(0xffbebebe),
                                      size: 14,
                                    ),
                                    Text('小米10 Pro'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: Ink(
                            width: 60,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xff109d58),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              child: Center(
                                child: Text(
                                  '关注',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text(
                        this._str,
                        style: TextStyle(color: Color(0xff202020)),
                      ),
                    ),
                    // SizedBox(height: 15),
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          children: List.generate(9, (index) {
                            return Container(
                              child: Image.asset(
                                'assets/images/post/post_$index.jpg',
                                fit: BoxFit.cover,
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: StickyTabBarDelegate(
                height: 56,
                child: Container(
                  color: Colors.white,
                  child: TabBar(
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
                      borderSide:
                          BorderSide(color: Color(0xff109d58), width: 2.6),
                      insets: EdgeInsets.fromLTRB(26, 0, 26, 5),
                    ),
                    tabs: [
                      Tab(
                        text: '赞 99',
                      ),
                      Tab(text: '回复 12'),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: TabBarView(
            controller: this._tabController,
            children: [
              Container(
                color: Colors.white,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('标题$index'),
                    );
                  },
                  itemCount: 100,
                ),
              ),
              Container(
                color: Colors.white,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('标题$index'),
                    );
                  },
                  itemCount: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
