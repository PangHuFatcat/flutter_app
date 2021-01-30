import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CoolapkHotDemo extends StatelessWidget {
  static const routeName = '/coolapk-hot-demo';

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
        color: Color(0xffeff2f7),
        child: SafeArea(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return CoolapkHot();
            },
            itemCount: 5,
          ),
        ),
      ),
    );
  }
}

class CoolapkHot extends StatefulWidget {
  @override
  _CoolapkHotState createState() => _CoolapkHotState();
}

class _CoolapkHotState extends State<CoolapkHot> {
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
#小米10Pro# #手机摄影# #美食家#
  ''';
  int _int = 100;
  List<TextSpan> _list = List<TextSpan>();

  @override
  void initState() {
    super.initState();
    if (this._str.length > this._int) {
      this._list.addAll([
        TextSpan(text: this._str.substring(0, this._int) + '...'),
        TextSpan(
          text: '查看更多',
          style: TextStyle(
            color: Color(0xff129d59),
          ),
        )
      ]);
    } else {
      this._list.add(TextSpan(text: this._str));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(12, 10, 12, 0),
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
                            child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Positioned.fill(
                                    child: Image.asset(
                                      'assets/images/1.jpg',
                                      fit: BoxFit.cover,
                                    )),
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
                                    Text('来着头条推荐'),
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
                            width: 40,
                            height: 40,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xffbebebe),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: RichText(
                        text: TextSpan(
                          children: this._list.map((e) => e).toList(),
                          style: TextStyle(color: Color(0xff202020)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
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
                              color: Colors.blue,
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
