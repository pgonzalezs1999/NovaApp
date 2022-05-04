import 'package:flutter/material.dart';

class TarjetaFeatures extends StatelessWidget {
  Icon nuevoIcono;
  String nuevoTexto;
  Widget nuevaRuta;
  TarjetaFeatures(this.nuevoIcono, this.nuevoTexto, this.nuevaRuta);

  @override
  Widget build(BuildContext context) {
    Color miColor = Color(0xBBffffff);
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01) +
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01), // +
      width: MediaQuery.of(context).size.width * 0.275,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0x1F000000),
      ),
      child: Align(
        alignment: Alignment.center,
        child: GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                nuevoIcono,
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(nuevoTexto, style: TextStyle(color: miColor)),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => nuevaRuta),
              );
            },
          ),
      ),
    );
  }
}