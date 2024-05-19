//imports
import 'package:flutter/material.dart';
import 'package:yinkana_app/constans.dart';

class Pantalla_Cuenta extends StatefulWidget {
  @override
  _Pantalla_Cuenta createState() => _Pantalla_Cuenta();
}

class _Pantalla_Cuenta extends State<Pantalla_Cuenta> {
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
                'Cuenta',
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
              Icons.account_circle_rounded,
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
                        'Mis datos',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: ColorsConstans.fontColorMain),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.perm_identity,
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
                      'Ajustes de cuenta',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: ColorsConstans.fontColorMain),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.build,
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
                      'Emails',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: ColorsConstans.fontColorMain),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.email_rounded,
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
