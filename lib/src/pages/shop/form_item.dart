import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:pryecto_1/src/models/item_shop.dart';
import 'package:pryecto_1/src/providers/shop_items.dart';

class FormItems extends StatefulWidget {
  FormItems({Key key}) : super(key: key);

  @override
  _FormItemsState createState() => _FormItemsState();
}

class _FormItemsState extends State<FormItems> {
  ShopItemProvider shop;
  BuildContext contextGlobal;
  // bool _status_boton = false;
  String _desc;
  int _cant;
  double _precio;
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
  }

  @override
  Widget build(BuildContext context) {
    contextGlobal = context;
    shop = Provider.of<ShopItemProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Agregar a tienda'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _textField('Descripcion'),
                _textFieldNumber('Cantidad'),
                _textFieldPrecio('Precio'),
                _botonEnviar()
              ],
            ),
          ),
        ));
  }

  Widget _botonEnviar() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      child: FlatButton(
        disabledColor: Colors.lightBlue,
        disabledTextColor: Colors.white10,
        onPressed: _agregar,
        child: Text('Agregar'),
        color: Colors.pinkAccent,
        textColor: Colors.white,
      ),
    );
  }

//widgets
  Widget _textField(String label) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        child: TextField(
            controller: _controller1,
            onChanged: (value) => _change(label, value),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: label,
            )));
  }

  Widget _textFieldNumber(String label) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        child: TextField(
            onChanged: (value) => _change(label, value),
            controller: _controller2,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: label,
            )));
  }

  Widget _textFieldPrecio(String label) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        child: TextField(
            controller: _controller3,
            onChanged: (value) => _change(label, value),
            keyboardType:
                TextInputType.numberWithOptions(decimal: true, signed: true),
            inputFormatters: <TextInputFormatter>[
              BlacklistingTextInputFormatter(new RegExp('[^0-9|.|]'))
            ],
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: label,
            )));
  }

//metodos
  void _change(String label, String value) {
    setState(() {
      if (label == 'Descripcion') {
        _desc = value;
      }
      if (label == 'Cantidad') {
        _cant = int.tryParse(value) ?? 0;
      } else if (label == 'Precio') {
        _precio = double.tryParse(value) ?? 0;
      }
    });
  }

  void _agregar() {
    print(_desc);
    print(_cant);
    print(_precio);
    final datos = new ItemShopModel();
    datos.descripcion = _desc;
    datos.cantidad = _cant;
    datos.precio = _precio;

    shop.addItem(datos);

    _controller1.clear();
    _controller2.clear();
    _controller3.clear();
    Navigator.of(contextGlobal).pop();
  }
}
