import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_prueba/PantallaLogin.dart';

class PantallaConversionExitosa extends StatelessWidget {
  const PantallaConversionExitosa({Key? key}) : super(key: key);
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
              child: Text("¡Transacción completada!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xCC33CCFF)),
                textAlign: TextAlign.center),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("10.00 USDT", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_forward_outlined, color: Colors.white),
                  Text("0.0032 ETH", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
              child: Text(
                "Su transacción está siendo revisada por nuestro personal. En unos mimentos tendrá acceso a sus nuevas monedas en la cuenta",
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
                  for(int i=0; i<2; i++)
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