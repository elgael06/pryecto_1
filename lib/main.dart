import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pryecto_1/src/pages/alert_page.dart';
import 'package:pryecto_1/src/providers/shop_items.dart';
import 'package:pryecto_1/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (context) => ShopItemProvider()),
        ],
        child: MaterialApp(
          title: 'Componentes app',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: getAplicationsRoutes(),
          onGenerateRoute: (settings) {
            print('ruta llamada ' + settings.name);
            return MaterialPageRoute(builder: (context) => AlertPage());
          },
        ));
  }
}
