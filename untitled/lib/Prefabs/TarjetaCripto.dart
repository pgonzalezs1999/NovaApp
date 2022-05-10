import 'package:flutter/material.dart';

class TarjetaCripto extends StatelessWidget {
  String nuevoNombre;
  String nuevaAbreviatura;
  String nuevaCantidad;
  String nuevoPrecio;
  String nuevaSubida;
  TarjetaCripto(this.nuevoNombre, this.nuevaAbreviatura, this.nuevaCantidad, this.nuevoPrecio, this.nuevaSubida);
  Color colorNombre = Color(0xDDFFFFFF);

  @override
  Widget build(BuildContext context) {
    Image nuevaFoto = Image.asset("assets/images/"+nuevaAbreviatura+".png", width: 30, height: 30,);
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.005),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: nuevaFoto,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(nuevoNombre, style: TextStyle(color: colorNombre, fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(nuevaCantidad + " " + nuevaAbreviatura, style: TextStyle(color: colorNombre, fontSize: 12)),
                    ],
                  ),
                  // AQUI LA GRAFICA
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("\$" + nuevoPrecio, style: TextStyle(color: colorNombre, fontSize: 15)),
                      Text(nuevaSubida + " %", style: TextStyle(color: colorNombre, fontSize: 15)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}