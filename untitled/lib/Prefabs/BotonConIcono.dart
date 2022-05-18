import 'package:flutter/material.dart';

class BotonConIcono extends StatelessWidget {
  Icon nuevoIcono;
  String nuevoTexto;
  Widget nuevaRuta;
  BotonConIcono(this.nuevoIcono, this.nuevoTexto, this.nuevaRuta);
  Color colorFondo = Color(0xFF2196F3);
  Color colorTexto = Color(0x99FFFFFF);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        color: colorFondo,
        borderRadius:  BorderRadius.circular(15),
      ),
      child: GestureDetector(
        child: TextButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => nuevaRuta
              ),
            );
          },
          icon: nuevoIcono,
          label: Text(nuevoTexto, style: TextStyle(color: colorTexto)),
        ),
      ),
    );
  }
}