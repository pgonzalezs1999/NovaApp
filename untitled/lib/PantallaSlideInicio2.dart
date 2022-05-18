import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaMain.dart';
import 'package:flutter_prueba/PantallaTransferencias.dart';
import 'package:flutter_prueba/PantallaFeatures.dart';
import 'package:flutter_prueba/PantallaPerfil.dart';

class PantallaSlideInicio2 extends StatefulWidget {
  const PantallaSlideInicio2({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => PantallaSlideInicio2State();
}

class PantallaSlideInicio2State extends State<PantallaSlideInicio2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.security_outlined, size: MediaQuery.of(context).size.width * 0.75),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                  child: Text("Seguridad", style: TextStyle(color: Color(0xCC33CCFF), fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025,
                      right: MediaQuery.of(context).size.width * 0.1,
                      left: MediaQuery.of(context).size.width * 0.1),
                  child: Text("Intercambia entre las distintas criptomonedas con tu dinero fiat de una forma rápida y segura", textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, size: 10),
              SizedBox(width: 8),
              Icon(Icons.circle, size: 10, color: Color(0xCC33CCFF)),
              SizedBox(width: 8),
              Icon(Icons.circle, size: 10),
            ],
          ),
        ],
      ),
    );
  }
}