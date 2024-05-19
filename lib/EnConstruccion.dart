//imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yinkana_app/constans.dart';

class EnConstruccion extends StatefulWidget {
  @override
  _EnConstruccion createState() => _EnConstruccion();
}

class _EnConstruccion extends State<EnConstruccion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsConstans.backgroundColor,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Image.asset('assets/trabajo-en-progreso.png')],
        )));
  }
}
