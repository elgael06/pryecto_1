import 'dart:math';

import 'package:flutter/material.dart';

class Animated extends StatefulWidget {
  Animated({Key key}) : super(key: key);

  @override
  _AnimatedState createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> {
  List<Color> _colores = [
    Colors.red,
    Colors.amber,
    Colors.blue,
    Colors.brown,
    Colors.pink,
    Colors.purple,
    Colors.black45,
    Colors.blueAccent,
    Colors.cyan,
    Colors.deepOrange,
    Colors.green,
  ];

  bool _status = false;
  double _width = 50;
  double _height = 50;
  Color _color = Colors.red;
  BorderRadius _borderRadius = BorderRadius.circular(10);
  Icon _icono = Icon(Icons.play_arrow);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animacion'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        onPressed: () => _playAnimation(),
        child: _icono,
      ),
    );
  }

  _playAnimation() {
    print('play accion...');
    if (!_status) {
      setState(() {
        _icono = Icon(Icons.stop);
        _status = true;
      });
      _cambiarMedidar();
    } else {
      setState(() {
        _icono = Icon(Icons.play_arrow);
        _status = false;
      });
    }
  }

  _cambiarMedidar() async {
    final cont = new Random();

    while (_status) {
      final cont2 = new Random();
      final cont3 = new Random();
      setState(() {
        _width = cont.nextInt(370).toDouble();
        _height = cont2.nextInt(370).toDouble();
        _borderRadius = BorderRadius.circular(cont3.nextInt(153).toDouble());
        _color = _colores[cont3.nextInt(_colores.length)];
      });
      await Future.delayed(Duration(milliseconds: 400));
    }
  }
}
