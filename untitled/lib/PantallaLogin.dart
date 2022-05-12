import 'package:flutter/material.dart';
import 'package:flutter_prueba/Dashboard.dart';
import 'package:flutter_prueba/PantallaPoliticasPrivacidad.dart';
import 'package:flutter_prueba/PantallaRegistro.dart';
import 'package:flutter_prueba/Prefabs/FondoLog.dart';

class PantallaLogin extends StatefulWidget {
  const PantallaLogin({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => PantallaLoginState();
}

class PantallaLoginState extends State<PantallaLogin> {
  void Anadir() {
    print("Hola");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        padding:
          EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08) +
          EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.08) +
          EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.1),
              child: Image.asset(
                "assets/images/BTC.png",
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ),
            FondoLog("Email", false, Icon(Icons.email_outlined, color: Color(0x66FFFFFF))),
            FondoLog("Contraseña", true, Icon(Icons.security_outlined, color: Color(0x66FFFFFF))),
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.005),
              width: MediaQuery.of(context).size.height * 0.2,
              child: ElevatedButton(
                child: const Text('Acceder'),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  FocusScope.of(context).unfocus(); // Que no abra el teclado al volver al login
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "¿No tienes cuenta?",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PantallaRegistro()),
                      );
                    },
                    child: Text("Regístrate")
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF0D47A1),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.075,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(0),
        child: GestureDetector(
          child: Text(
            "Nova (C) - Políticas de privacidad",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PantallaPoliticasPrivacidad()
              ),
            );
          }
        ),
      ),
    );
  }
}