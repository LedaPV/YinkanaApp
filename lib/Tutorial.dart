//imports
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:yinkana_app/constans.dart';

class Tutorial extends StatefulWidget {
  @override
  _Tutorial createState() => _Tutorial();
}

class _Tutorial extends State<Tutorial> {
  //----------Elementos necesarios para insertar en esta pantalla PageViewDotIndicator (puntos de deslizamiento)
  //variables a utilizar
  late int selectedPage;
  late final PageController _pageController;

  //función que inicializa las variables
  @override
  void initState() {
    selectedPage = 0;
    super.initState();
    _pageController = PageController(initialPage: selectedPage);
  }

  //función que establecerá los textos que aparecen en el tutorial
  String texto($index) {
    if ($index == 0) {
      return 'En esta pequeña guía, te mostraremos paso a paso cómo utilizar nuestra App. Con ella, podrás localizar tu ubicación y jugar a nuestra yinkana obteniendo premios y ofertas';
    } else if ($index == 1) {
      return 'Primero, escoge el hotel al que quieras acceder';
    } else if ($index == 2) {
      return 'Debes escoger la actividad que desees de ese hotel';
    } else if ($index == 3) {
      return 'Recuerda que para jugar a la Yinkana tendrás que conceder permisos a la cámara';
    } else if ($index == 4) {
      return 'En la Yinakana, tendrás que leer los QR escondidos por el hotel según las posiciones que te indicará el juego';
    } else if ($index == 5) {
      return 'Ya estás listo para empezar a utilizar nuestra APP';
    }
    return 'Fin';
  }

  //función que asigna el logo que aparecerán en las pantallas
  String logo($index) {
    if ($index == 0) {
      return 'assets/logo_informacion/info_duo.png';
    } else if ($index == 1) {
      return 'assets/numeros/1.png';
    } else if ($index == 2) {
      return 'assets/numeros/2.png';
    } else if ($index == 3) {
      return 'assets/numeros/3.png';
    } else if ($index == 4) {
      return 'assets/numeros/4.png';
    } else if ($index == 5) {
      return 'assets/numeros/finish.png';
    }
    return 'No existe el logo';
  }

  //función que asigna las imágenes que aparecerán en las pantallas
  String imagen($index) {
    if ($index == 1) {
      return 'assets/capturasPantalla/telefono_hoteles.png';
    } else if ($index == 2) {
      return 'assets/capturasPantalla/telefono_opciones.png';
    } else if ($index == 3) {
      return 'assets/capturasPantalla/telefono_permisos.png';
    } else if ($index == 4) {
      return 'assets/capturasPantalla/telefono_QR.png';
    }
    return 'No existe la imagen';
  }

  //función que asigna el tamaño del contenedor del texto dependiendo de la pantalla donde aparece
  double tamano($index) {
    if ($index == 0) {
      return 220;
    } else if ($index == 1) {
      return 100;
    } else if ($index == 2) {
      return 100;
    } else if ($index == 3) {
      return 160;
    } else if ($index == 4) {
      return 190;
    } else if ($index == 5) {
      return 100;
    }
    return 200;
  }

  //

  //----------Diseño de la apariencia de la pantalla
  @override
  Widget build(BuildContext context) {
    const pageCount = 6;
    return Scaffold(
      backgroundColor: ColorsConstans.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    selectedPage = page;
                  });
                },
                children: List.generate(pageCount, (index) {
                  return Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        logo(index),
                      ),
                      SizedBox(height: 50),
                      //____________contenedor cuadro de texto
                      Container(
                        width: 300.0,
                        height: tamano(index),
                        child: Text(
                          texto(index),
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: AutofillHints.familyName,
                              fontSize: 21,
                              height: 1.3,
                              letterSpacing: 0,
                              color: ColorsConstans.fontColorMain,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //_____________contenedor de espacio para que en la primera pantalla no aparezca el contenedor de img
                      Container(
                        child: Visibility(
                            visible: index == 0,
                            child: SizedBox(
                              height: 70,
                            )),
                      ),
                      //_____________contenedor para el botón "Saltar tutorial"
                      Container(
                        //Visibility es un widget que te ofrece la opción de ocular elementos a partir de una condición
                        child: Visibility(
                          visible: index == 0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              foregroundColor: ColorsConstans.backgroundColor,
                              backgroundColor: ColorsConstans.fontColorMain,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/terceraPantalla');
                            },
                            child: Text(
                              "Saltar tutorial",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      //___________contenedor para el botón "Comenzar"
                      Container(
                        child: Visibility(
                          visible: index == 5,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              foregroundColor: ColorsConstans.backgroundColor,
                              backgroundColor: ColorsConstans.fontColorMain,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/terceraPantalla');
                            },
                            child: Text(
                              "Comenzar",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      //_____________contenedor para las imágenes
                      Visibility(
                        visible: index >= 1 && index < 5,
                        child: Container(
                          height: 400,
                          child: Image.asset(
                            imagen(index),
                          ),
                        ),
                      ),
                    ],
                  ));
                }),
              ),
            ),

            //_____________puntos para pasar las características de la pantalla
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: PageViewDotIndicator(
                currentItem: selectedPage,
                count: pageCount,
                selectedColor: Colors.white,
                unselectedColor:
                    ColorsConstans.backgroundColorPageViewDotIndicator,
                duration: const Duration(milliseconds: 200),
                boxShape: BoxShape.circle,
                onItemClicked: (index) {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
