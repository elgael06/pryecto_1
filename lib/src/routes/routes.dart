import 'package:flutter/material.dart';
import 'package:pryecto_1/src/pages/alert_page.dart';
import 'package:pryecto_1/src/pages/animation.dart';
import 'package:pryecto_1/src/pages/avatar_page.dart';
import 'package:pryecto_1/src/pages/card_page.dart';
import 'package:pryecto_1/src/pages/home_page.dart';
import 'package:pryecto_1/src/pages/shop/form_item.dart';
import 'package:pryecto_1/src/pages/shop/shop_items.dart';

Map<String, WidgetBuilder> getAplicationsRoutes() => <String, WidgetBuilder>{
      '/': (BuildContext context) => HomePage(),
      'alert': (BuildContext context) => AlertPage(),
      'avatar': (BuildContext context) => AvatarPage(),
      'card': (BuildContext context) => CartPage(),
      'animacion': (BuildContext context) => Animated(),
      'formItem': (BuildContext context) => FormItems(),
      'shopItems': (BuildContext context) => ShopItem(),
    };
