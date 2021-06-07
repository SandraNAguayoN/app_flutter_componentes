import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

/* Leer el JSON
  _MenuProvider() {
    cargarData();
  }

  cargarData() {
    
    rootBundle.loadString('data/menu_opts.json').then((data) {
      print(data);
    });
  }*/

  _MenuProvider() {
    //cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);
    print(dataMap['rutas']);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = new _MenuProvider();
