import 'dart:collection';
import 'package:farhati/prev_reserves.dart';
import 'package:flutter/foundation.dart';

class ItemData with ChangeNotifier {
  final List<PrevReserves> _items = [];
  UnmodifiableListView<PrevReserves> get items => UnmodifiableListView(_items);
  
  get size => _items.length;
  
  void addItem(PrevReserves item) {
    _items.add(item);
    notifyListeners();
  }
  
  
  void removeItem(PrevReserves item) {
    _items.remove(item);
    notifyListeners();
  }
}