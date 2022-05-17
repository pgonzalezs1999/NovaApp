import 'package:flutter/material.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/FondoLog.dart';
import 'package:flutter_prueba/Prefabs/TarjetaCripto.dart';

class PantallaNuevoContacto extends StatefulWidget {
  const PantallaNuevoContacto({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => PantallaNuevoContactoState();
}

class PantallaNuevoContactoState extends State<PantallaNuevoContacto> {
  Widget customSearchBar = const Text('My Personal Journal');
  void Anadir() {
    print("Hola");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08,
            right: MediaQuery.of(context).size.width * 0.08,
            top: MediaQuery.of(context).size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: GestureDetector(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Icon(Icons.arrow_back_outlined, color: Colors.white, size: 30),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05),
              child: Align(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/images/youp.png", width: 80),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
              decoration: BoxDecoration(
                color: Color(0x28FFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x22000000),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: "Nombre",
                    hintStyle: TextStyle(color: Color(0x77FFFFFF)),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.02)
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
              decoration: BoxDecoration(
                color: Color(0x28FFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x22000000),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: "Apellido",
                    hintStyle: TextStyle(color: Color(0x77FFFFFF)),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.02)
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
              decoration: BoxDecoration(
                color: Color(0x28FFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x22000000),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: "Nombre de usuario",
                    hintStyle: TextStyle(color: Color(0x77FFFFFF)),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.02)
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
              decoration: BoxDecoration(
                color: Color(0x28FFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x22000000),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: "Agregar teléfono de contacto (opcional)",
                    hintStyle: TextStyle(color: Color(0x77FFFFFF)),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.02)
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
              decoration: BoxDecoration(
                color: Color(0x28FFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x22000000),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: "Agregar correo (opcional)",
                    hintStyle: TextStyle(color: Color(0x77FFFFFF)),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.02)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
              child: Align(
                child: ElevatedButton(
                  child: const Text('Guardar contacto'),
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).unfocus(); // Que no abra el teclado al volver al login
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}