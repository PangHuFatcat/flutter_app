import 'dart:collection';

import 'package:flutter/material.dart';

class CartsItem {
  String name;
  int count;
  double price;

  CartsItem(this.name, this.count, this.price);
}

class CartsModel with ChangeNotifier {
  final List<CartsItem> _items = [];

  UnmodifiableListView<CartsItem> get items => UnmodifiableListView(_items);

  double get totalPrice =>
      _items.fold(0, (value, item) => value + item.count * item.price);

  add(CartsItem item) {
    _items.add(item);
    notifyListeners();
  }

  removeAt(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  clear() {
    _items.clear();
    notifyListeners();
  }
}
