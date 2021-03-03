import 'package:flutter/material.dart';

class CountModel extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  increase() {
    _count++;
    notifyListeners();
  }

  remove() {
    _count = 0;
    notifyListeners();
  }
}


// class CountModel extends ChangeNotifier {
//   List _list = [];
//
//   List get list => _list;
//
//   add(item) {
//     _list.add(item);
//     notifyListeners();
//   }
//
//   remove() {
//     _list.clear();
//     notifyListeners();
//   }
// }
