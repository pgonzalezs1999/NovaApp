import 'package:flutter/material.dart';
import 'package:flutter_prueba/Configuracion/Temas.dart';
import 'package:flutter_prueba/main.dart';

class FondoLog extends StatelessWidget {
  String nuevaPista;
  bool esOculto;
  Icon nuevoIcono;
  FondoLog(this.nuevaPista, this.esOculto, this.nuevoIcono);
  Color nuevoColor = Color(0x99FFFFFF);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
      decoration: BoxDecoration(
        color: Color(0x44E3F2FD),
        borderRadius:  BorderRadius.circular(15),
      ),
      child: TextField(
        autofocus: false,
        obscureText: esOculto,
        decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: nuevaPista,
            hintStyle: TextStyle(color: nuevoColor),
            prefixIcon: nuevoIcono,
            border: InputBorder.none,
            contentPadding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02) +
                EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02)
        ),
      ),
    );
  }
}