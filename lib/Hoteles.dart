//imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yinkana_app/constans.dart';

class Hoteles extends StatefulWidget {
  @override
  _Hoteles createState() => _Hoteles();
}

class _Hoteles extends State<Hoteles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstans.backgroundColor,
      body: Center(
        child: Container(
            width: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        backgroundColor: ColorsConstans.PolynesiaColor),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Polynesia_inicio');
                    },
                    child: Image.asset('assets/hoteles/polynesia.png')),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        backgroundColor: ColorsConstans.RiwoColor),
                    onPressed: () {
                      Navigator.pushNamed(context, '/enConstruccion');
                    },
                    child: Image.asset('assets/hoteles/riwo.png')),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        backgroundColor: ColorsConstans.VillageColor),
                    onPressed: () {
                      Navigator.pushNamed(context, '/enConstruccion');
                    },
                    child: Image.asset('assets/hoteles/village.png')),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        backgroundColor: ColorsConstans.CasaMaiaColor),
                    onPressed: () {
                      Navigator.pushNamed(context, '/enConstruccion');
                    },
                    child: Image.asset('assets/hoteles/casamaia.png')),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        backgroundColor: ColorsConstans.BeachClubColor),
                    onPressed: () {
                      Navigator.pushNamed(context, '/enConstruccion');
                    },
                    child: Image.asset('assets/hoteles/beachClub.png')),
              ],
            )),
      ),
    );
  }
}
