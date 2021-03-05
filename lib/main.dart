import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/pages/demo/nested-navigator-demo.dart';
import 'package:flutter_app/pages/model/carts.dart';
import 'package:provider/provider.dart';

// view
import './pages/navigation.dart';
import './pages/register/index.dart';
import './pages/login/index.dart';

// demo
import './pages/demo/custom-scroll-view-dmo.dart';
import './pages/demo/coolapk-index-demo.dart';
import './pages/demo/coolapk-hot-demo.dart';
import './pages/demo/coolapk-hot-details-demo.dart';
import './pages/demo/douban-slide-view-demo.dart';
import './pages/demo/provider-demo.dart';
import './pages/demo/products-list-demo.dart';
import './pages/demo/carts-list-demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartsModel(),
      child: MaterialApp(
        title: 'Welcome to Flutter',
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.grey,
          splashFactory: InkRipple.splashFactory,
        ),
        routes: {
          NavigationView.routeName: (context) => NavigationView(),
          Login.routeName: (context) => Login(),
          Register.routeName: (context) => Register(),
          CustomScrollViewDemo.routeName: (context) => CustomScrollViewDemo(),
          CoolapkIndexDemo.routeName: (context) => CoolapkIndexDemo(),
          CoolapkHotDetailsDemo.routeName: (context) => CoolapkHotDetailsDemo(),
          CoolapkHotDemo.routeName: (context) => CoolapkHotDemo(),
          DoubanSlideViewDemo.routeName: (context) => DoubanSlideViewDemo(),
          ProviderDemo.routeName: (context) => ProviderDemo(),
          ProductsListDemo.routeName: (context) => ProductsListDemo(),
          CartsListDemo.routeName: (context) => CartsListDemo(),
          NestedNavigatorDemo.routeName: (context) => NestedNavigatorDemo(),
        },
      ),
    );
  }
}
