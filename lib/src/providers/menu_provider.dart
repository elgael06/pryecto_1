import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final value = await rootBundle.loadString('data/menu_opts.json');
    Map data = json.decode(value);
    print(data);
    opciones = data['rutas'];

    return opciones;
  }
}

final menuProvider = new _MenuProvider();
