import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaMain.dart';
import 'package:flutter_prueba/PantallaTransferencias.dart';
import 'package:flutter_prueba/PantallaFeatures.dart';
import 'package:flutter_prueba/PantallaPerfil.dart';

class PantallaSlideInicio1 extends StatefulWidget {
  const PantallaSlideInicio1({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => PantallaSlideInicio1State();
}

class PantallaSlideInicio1State extends State<PantallaSlideInicio1> {
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
                Icon(Icons.manage_accounts_outlined, size: MediaQuery.of(context).size.width * 0.75),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                  child: Text("Gestión de criptomonedas", style: TextStyle(color: Color(0xCC33CCFF), fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025,
                      right: MediaQuery.of(context).size.width * 0.1,
                      left: MediaQuery.of(context).size.width * 0.1),
                  child: Text("Gestiona y almacena todas tus criptomonedas desde una interfaz sencilla e inteligente", textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, size: 10, color: Color(0xCC33CCFF)),
              SizedBox(width: 8),
              Icon(Icons.circle, size: 10),
              SizedBox(width: 8),
              Icon(Icons.circle, size: 10),
            ],
          ),
        ],
      ),
    );
  }
}