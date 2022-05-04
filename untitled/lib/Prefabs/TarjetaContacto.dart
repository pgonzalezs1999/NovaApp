import 'package:flutter/material.dart';

class TarjetaContacto extends StatelessWidget {
  String nuevoNombre;
  String nuevoCorreo;
  Image nuevaFoto;
  TarjetaContacto(this.nuevoNombre, this.nuevoCorreo, this.nuevaFoto);
  Color colorNombre = Color(0xDDFFFFFF);
  Color colorCorreo = Color(0xBBFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: nuevaFoto,
          ),
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nuevoNombre, style: TextStyle(color: colorNombre, fontSize: 16, fontWeight: FontWeight.bold)),
                Text(nuevoCorreo, style: TextStyle(color: colorCorreo, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}