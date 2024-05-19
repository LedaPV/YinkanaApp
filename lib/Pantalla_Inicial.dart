//imports
import 'package:flutter/material.dart';
import 'package:yinkana_app/constans.dart';

class Pantalla_Inicial extends StatefulWidget {
  @override
  _Pantalla_Inicial createState() => _Pantalla_Inicial();
}

class _Pantalla_Inicial extends State<Pantalla_Inicial> {
  //Hace que la pantalla pasa a otra de forma automática después de 3 segundos (función)
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/segundaPantalla');
    });
  }

  //Diseño de la apariencia de la pantalla
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsConstans.backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150.0,
                width: 350.0,
                child: Image.asset('assets/logo_sinFondo.png'),
              ),
              SizedBox(height: 5),
              CircularProgressIndicator(
                //Este elemento es complicado, al emulador no le gusta y hace que se quede pillada la pantalla, pero en un móvil real si va bien.
                color: Colors.white,
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 50.0,
                width: 350.0,
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/banderas/reino-unido.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'EN',
                        style: TextStyle(
                            color: ColorsConstans.fontColorMain,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/banderas/espana.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'ES',
                        style: TextStyle(
                            color: ColorsConstans.fontColorMain,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/banderas/bandera-alemana.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'DE',
                        style: TextStyle(
                            color: ColorsConstans.fontColorMain,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
