import 'package:flutter/material.dart';
import 'package:pryecto_1/src/models/item_shop.dart';

class ShopItemProvider with ChangeNotifier {
  List<ItemShopModel> _lista = [];

  List<ItemShopModel> get items => _lista;

  int get totalItems => _lista.length;

  void addItem(ItemShopModel item) {
    final total = totalItems;
    if (total == 0) {
      item.id = 1;
    } else {
      item.id = _lista[total - 1].id + 1;
    }
    _lista.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    _lista.removeAt(index);
    notifyListeners();
  }
}
