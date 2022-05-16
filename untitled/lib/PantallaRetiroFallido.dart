import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_prueba/PantallaLogin.dart';

class PantallaRetiroFallido extends StatelessWidget {
  const PantallaRetiroFallido({Key? key}) : super(key: key);
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
              child: Icon(Icons.error_outline, size: MediaQuery.of(context).size.width * 0.5),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
              child: Text("¡Retiro fallido!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xCC33CCFF)),
                textAlign: TextAlign.center),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
              child: Text(
                "Ha surgido un error al hacer el retiro. Inténtelo de nuevo en unos instantes",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                child: Text("Continuar"),
                onPressed: () {
                  for(int i=0; i<4; i++)
                  {
                    Navigator.pop(context);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}