import 'dart:async';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_prueba/PantallaInicio1.dart';
import 'package:flutter_prueba/PantallaLogin.dart';

class PantallaSplash extends StatefulWidget {
  const PantallaSplash({Key? key}) : super(key: key);
  @override
  State<PantallaSplash> createState() => PantallaSplashState();
}

class PantallaSplashState extends State<PantallaSplash> {

  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PantallaInicio1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Icon(Icons.biotech_outlined, size: MediaQuery.of(context).size.width * 0.75),
      ),
    );
  }
}