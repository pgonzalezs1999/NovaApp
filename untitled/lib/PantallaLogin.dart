import 'package:flutter/material.dart';
import 'package:flutter_prueba/Dashboard.dart';
import 'package:flutter_prueba/PantallaRegistro.dart';

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
      body: Container(
        color: Color(0xFF0D47A1),
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
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
              decoration: BoxDecoration(
                color: Color(0x44E3F2FD),
                borderRadius:  BorderRadius.circular(15),
              ),
              child: TextField(
                autofocus: false,
                style: TextStyle(color: Color(0x77FFFFFF)),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                  fillColor: Colors.white,
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    color: Color(0x77FFFFFF),
                  ),
                  border: InputBorder.none,
                  contentPadding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02) +
                    EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
              decoration: BoxDecoration(
                color: Color(0x44E3F2FD),
                borderRadius:  BorderRadius.circular(15),
              ),
              child: TextField(
                autofocus: false,
                style: TextStyle(color: Color(0x77FFFFFF)),
                obscureText: true,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                  fillColor: Colors.white,
                  hintText: 'Contraseña',
                  prefixIcon: Icon(
                    Icons.security_outlined,
                    color: Color(0x77FFFFFF),
                  ),
                  border: InputBorder.none,
                  contentPadding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02) +
                    EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02)
                ),
              ),
            ),
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
        child: Text(
          "Nova (C) - Políticas de privacidad",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}