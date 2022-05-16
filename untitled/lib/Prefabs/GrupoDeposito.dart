import 'package:flutter/material.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';

class GrupoDeposito extends StatelessWidget {
  String nuevoTitulo;
  String nuevaPista;
  GrupoDeposito(this.nuevoTitulo, this.nuevaPista);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
            child: Text(nuevoTitulo, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          GestureDetector(
            child: FondoGrupo(
              Text(nuevaPista, style: TextStyle(color: Color(0x88FFFFFF))),
            ),
          ),
        ],
      ),
    );
  }
}