import 'package:flutter/material.dart';
import 'package:pryecto_1/src/providers/menu_provider.dart';
import 'package:pryecto_1/src/utils/icon_string.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          print(snapshot.data);

          return ListView(
            children: _crearListaItems(snapshot.data, context),
          );
        });
  }

  List<Widget> _crearListaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      String texto = element['texto'];
      String icono = element['icon'];
      String ruta = element['ruta'];

      opciones
        ..add(ListTile(
          title: Text(texto),
          leading: getIcon(icono),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            print('click al titulo $texto !!!');
            Navigator.pushNamed(context, ruta);
          },
        ))
        ..add(Divider());
    });

    return opciones;
  }
}
