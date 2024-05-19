//imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yinkana_app/constans.dart';

class Polynesia extends StatefulWidget {
  @override
  _Polynesia createState() => _Polynesia();
}

class _Polynesia extends State<Polynesia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/hoteles/polynesia.png',
          fit: BoxFit.contain,
          height: 143.0,
        ),
        backgroundColor: ColorsConstans.PolynesiaColor,
        toolbarHeight: 250.0,
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 35.0,
            ),
            offset: Offset(0, 60),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  child: Text('Ajustes'),
                  onTap: () {
                    Navigator.pushNamed(context, '/ajustes');
                  },
                ),
                PopupMenuItem<String>(
                  child: Text('Cuenta'),
                  onTap: () {
                    Navigator.pushNamed(context, '/cuenta');
                  },
                ),
                PopupMenuItem<String>(
                  child: Text('Mis recompensas'),
                  onTap: () {
                    Navigator.pushNamed(context, '/recompensas');
                  },
                ),
                PopupMenuItem<String>(
                  child: Text('Volver a Inicio'),
                  onTap: () {
                    Navigator.pushNamed(context, '/terceraPantalla');
                  },
                ),
              ];
            },
          ),
        ],
      ),
      backgroundColor: ColorsConstans.PolynesiaColor,
      body: Center(
        child: Container(
          width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fixedSize: Size(250.0, 150.0),
                      shadowColor: Colors.black,
                      elevation: 8,
                      padding:
                          EdgeInsets.symmetric(horizontal: 55, vertical: 20),
                      backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/enConstruccion');
                  },
                  child: Text('Mapa',
                      style: TextStyle(
                          color: ColorsConstans.PolynesiaColor,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold))),
              SizedBox(
                height: 100.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fixedSize: Size(250.0, 150.0),
                      shadowColor: Colors.black,
                      elevation: 8,
                      padding:
                          EdgeInsets.symmetric(horizontal: 55, vertical: 20),
                      backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/escaneoQR');
                  },
                  child: Text('Yinkana',
                      style: TextStyle(
                          color: ColorsConstans.PolynesiaColor,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
    );
  }
}
