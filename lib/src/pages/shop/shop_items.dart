import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pryecto_1/src/providers/shop_items.dart';

// ignore: must_be_immutable
class ShopItem extends StatelessWidget {
  ShopItemProvider shop;

  @override
  Widget build(BuildContext context) {
    shop = Provider.of<ShopItemProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda'),
      ),
      body: ListView(
        children: _itemsCard(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'formItem'),
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
      ),
    );
  }

  List<Widget> _itemsCard() {
    List<Widget> lista = [];
    final datos = shop.items;

    datos?.forEach((element) {
      Widget item = ListTile(
        title: Text(element.descripcion),
        subtitle: Text(element.cantidad.toString()),
      );
      lista.add(item);
      lista.add(Divider());
    });

    return lista;
  }
}
