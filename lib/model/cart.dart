import 'package:flutter/material.dart';

import '../widgets/item_container.dart';

class Cart with ChangeNotifier {
  List<Items> items = [];
  int price = 0;
  add(Items item) {
    items.add(item);
    price += item.price;
    notifyListeners();
  }

  remove(Items item) {
    items.remove(item);
    price -= item.price;
    notifyListeners();
  }

  List<Items> get myOrder {
    return items;
  }

  int get count {
    return items.length;
  }

  int get totalPrice {
    return price;
  }
}
