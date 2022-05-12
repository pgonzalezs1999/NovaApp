import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_prueba/PantallaLogin.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/TarjetaContacto.dart';
import 'package:flutter_prueba/Prefabs/TarjetaTransferencia.dart';

class PantallaRegistradoCorrectamente extends StatefulWidget {
  const PantallaRegistradoCorrectamente();
  @override
  State<StatefulWidget> createState() {
    return PantallaRegistradoCorrectamenteState();
  }
}

class PantallaRegistradoCorrectamenteState extends State<PantallaRegistradoCorrectamente> {
  void Anadir() {
    print("Hola");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.075),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05),
              child: Icon(Icons.celebration, size: MediaQuery.of(context).size.width * 0.5),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
              child: Text("¡Felicitaciones!", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
              child: Text(
                "Su cuenta ha sido creada correctamente. Inicie sesión para continuar",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                child: Text("Acceder"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PantallaLogin()
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}