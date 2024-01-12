import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void setCount() {
    _count++;
    notifyListeners();
  }
}

class SlideProvider with ChangeNotifier {
  double _value = .4;
  double get value => _value;

  void setValue(double val) {
    _value = val;
    notifyListeners();
  }
}

class FavouritProvider with ChangeNotifier {
  final List<int> _selectItem = [];
  List get selectItem => _selectItem;
  void addItem(value) {
    _selectItem.add(value);
    notifyListeners();
  }

  void remove(value) {
    _selectItem.remove(value);
    notifyListeners();
  }
}
