import 'package:flutter/widgets.dart';
import 'package:lwd_food_ordering_app/common.dart';

class ShoppingCart extends ChangeNotifier {
  static double taxRate = 0.095;
  Map<MenuItemData, int> _items = new Map();

  get items => _items;

  void addItem(MenuItemData item, int count) {
    if (count < 0) {
      throw new Exception('Cannot add negative number of items.');
    }
    int? oldCount = _items[item];
    if (oldCount == null) {
      oldCount = 0;
    }
    _items[item] = oldCount + count;
    notifyListeners();
  }

  void removeItem(MenuItemData item, int count) {
    if (count < 0) {
      throw new Exception('Cannot remove negative number of items.');
    }
    int? oldCount = _items[item];
    if (oldCount == null) {
      oldCount = 0;
    }
    if (oldCount < count) {
      throw new Exception('Cannot remove more than current number of items.');
    }
    _items[item] = oldCount - count;
    notifyListeners();
  }

  void removeAll(MenuItemData item) {
    _items[item] = 0;
    notifyListeners();
  }

  double get subtotal {
    double subtotal = 0.0;
    for (var e in _items.entries) {
      subtotal += e.key.price * e.value;
    }
    return subtotal;
  }

  double get tax => subtotal * taxRate;

  double get grandTotal => subtotal + tax;
}
