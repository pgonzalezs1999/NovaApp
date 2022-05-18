import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaMain.dart';
import 'package:flutter_prueba/PantallaSlideInicio1.dart';
import 'package:flutter_prueba/PantallaSlideInicio2.dart';
import 'package:flutter_prueba/PantallaSlideInicio3.dart';
import 'package:flutter_prueba/PantallaTransferencias.dart';
import 'package:flutter_prueba/PantallaFeatures.dart';
import 'package:flutter_prueba/PantallaPerfil.dart';

class GestionSlidesInicio extends StatefulWidget {
  const GestionSlidesInicio({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => GestionSlidesInicioState();
}

class GestionSlidesInicioState extends State<GestionSlidesInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        children: [
          PantallaSlideInicio1(),
          PantallaSlideInicio2(),
          PantallaSlideInicio3()
        ],
      )
    );
  }
}