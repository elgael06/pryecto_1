import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'uno',
    'dos',
    'tres',
    'cuatro',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'uno',
    'dos',
    'tres',
    'cuatro',
    'uno',
    'dos',
    'tres',
    'cuatro'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('conponentes'),
        ),
        body: ListView(
          children: <Widget>[..._crearItemCorto(), ..._crearWidget()],
        ));
  }

  List<Widget> _crearWidget() {
    List<Widget> lista = new List<Widget>();
    for (String opcion in opciones) {
      lista
        ..add(ListTile(
          title: Text('titulo $opcion'),
          subtitle: Text('dsfbd'),
        ))
        ..add(Divider(
          height: 22,
        ));
    }

    return lista;
  }

  List<Widget> _crearItemCorto() {
    var widgets = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('$item !'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }
}
