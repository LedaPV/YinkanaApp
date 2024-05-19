//imports
import 'package:flutter/material.dart';
import 'package:yinkana_app/constans.dart';

class Pantalla_Ajustes extends StatefulWidget {
  @override
  _Pantalla_Ajustes createState() => _Pantalla_Ajustes();
}

class _Pantalla_Ajustes extends State<Pantalla_Ajustes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsConstans.PolynesiaColor,
        toolbarHeight: 100.0,
        elevation: 4,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              // Widget Expanded para ocupar el espacio restante
              child: Text(
                'Ajustes',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorsConstans.fontColorMain,
                ),
              ),
            ),
            SizedBox(width: 10), // Espacio entre el texto y el icono
            Icon(
              Icons.settings,
              size: 40,
              color: ColorsConstans.fontColorMain,
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: Colors.black,
                    elevation: 10,
                    backgroundColor: ColorsConstans.PolynesiaColor,
                    fixedSize: Size(350.0, 100.0),
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/enConstruccion');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Acerca de',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: ColorsConstans.fontColorMain),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.import_contacts,
                          size: 30, color: ColorsConstans.fontColorMain),
                    ],
                  )),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: Colors.black,
                  elevation: 10,
                  backgroundColor: ColorsConstans.PolynesiaColor,
                  fixedSize: Size(350.0, 100.0),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/enConstruccion');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Política de privacidad',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: ColorsConstans.fontColorMain),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.security,
                        size: 25, color: ColorsConstans.fontColorMain),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: Colors.black,
                  elevation: 10,
                  backgroundColor: ColorsConstans.PolynesiaColor,
                  fixedSize: Size(400.0, 100.0),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/enConstruccion');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Permisos',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: ColorsConstans.fontColorMain),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.vpn_key,
                        size: 30, color: ColorsConstans.fontColorMain),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
