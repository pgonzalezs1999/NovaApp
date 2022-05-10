import 'package:flutter/material.dart';
import 'package:flutter_prueba/Prefabs/TarjetaCripto.dart';

class TarjetaInversion extends StatelessWidget {
  String nuevoNombre;
  String nuevaAbreviatura;
  String nuevaCantidad;
  String nuevoPrecio;
  String nuevaSubida;
  TarjetaInversion(this.nuevoNombre, this.nuevaAbreviatura, this.nuevaCantidad, this.nuevoPrecio, this.nuevaSubida);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.015),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x22000000),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Color(0x28FFFFFF),
      ),
      width: MediaQuery.of(context).size.width,
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0025,
            bottom: MediaQuery.of(context).size.height * 0.0075,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.02),
        child: TarjetaCripto(nuevoNombre, nuevaAbreviatura, nuevaCantidad, nuevoPrecio, nuevaSubida),
      ),
    );
  }
}