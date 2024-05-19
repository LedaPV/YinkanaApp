import 'package:flutter/material.dart';
import 'package:yinkana_app/Pantalla_Ajustes.dart';
import 'package:yinkana_app/Pantalla_Cuenta.dart';
import 'package:yinkana_app/Pantalla_Inicial.dart';
import 'package:yinkana_app/Pantalla_MisRecompensas.dart';
import 'package:yinkana_app/Tutorial.dart';
import 'package:yinkana_app/Hoteles.dart';
import 'package:yinkana_app/Polynesia.dart';
import 'package:yinkana_app/EnConstruccion.dart';
import 'package:yinkana_app/EscaneoQR.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/primeraPantalla', //ruta principal
    routes: {
      '/primeraPantalla': (context) => Pantalla_Inicial(),
      '/segundaPantalla': (context) => Tutorial(),
      '/terceraPantalla': (context) => Hoteles(),
      '/Polynesia_inicio': (context) => Polynesia(),
      '/escaneoQR': (context) => EscaneoQR(),
      '/enConstruccion': (context) => EnConstruccion(),
      '/ajustes': (context) => Pantalla_Ajustes(),
      '/cuenta': (context) => Pantalla_Cuenta(),
      '/recompensas': (context) => Pantalla_MisRecompensas(),
    },
  ));
}

// void main() {
//   runApp(MaterialApp(
//       initialRoute: '/Polynesia_inicio', //ruta principal
//       routes: {'/Polynesia_inicio': (context) => Polynesia()}));
// }
