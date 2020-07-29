import 'package:flutter/material.dart';

final _icon = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'add_shopping_cart': Icons.add_shopping_cart,
  'shopping_cart': Icons.shopping_cart
};

Icon getIcon(String nombre) => Icon(_icon[nombre]);
