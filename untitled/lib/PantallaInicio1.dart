import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_prueba/PantallaLogin.dart';

class PantallaInicio1 extends StatefulWidget {
  const PantallaInicio1({Key? key}) : super(key: key);
  @override
  State<PantallaInicio1> createState() => PantallaInicio1State();
}

class PantallaInicio1State extends State<PantallaInicio1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GestureDetector(
          child: Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.075,
                right: MediaQuery.of(context).size.width * 0.075),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.biotech_outlined, size: MediaQuery.of(context).size.width * 0.5),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Text("BIENVENIDO A", style: TextStyle(fontSize: 20)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text("PROYECTO X", style: TextStyle(color: Color(0xEE22AAEE), fontWeight: FontWeight.bold, fontSize: 40)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Text("Todas tus transacciones en criptomonedas en el mismo lugar. Trackea criptomonedas, añádelas a tu portfolio, compra y vende", textAlign: TextAlign.center, style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PantallaLogin()),
            );
          },
        )
      ),
    );
  }
}