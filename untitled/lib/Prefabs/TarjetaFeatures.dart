import 'package:flutter/material.dart';
import 'package:flutter_prueba/Configuracion/Temas.dart';
import 'package:flutter_prueba/main.dart';

class TarjetaFeatures extends StatefulWidget {
  Icon nuevoIcono;
  String nuevoTexto;
  Widget nuevaRuta;
  TarjetaFeatures(this.nuevoIcono, this.nuevoTexto, this.nuevaRuta);
  @override
  State<StatefulWidget> createState() => TarjetaFeaturesState();
}

class TarjetaFeaturesState extends State<TarjetaFeatures> {
    Color colorTexto = Color(0xBBffffff);
    Color colorFondo = Color(0x1F000000);
    void initState()
    {
      if(instanciaTema.themeMode == ThemeMode.dark)
      {
        colorFondo = Color(0x1FFFFFFF);
      }
    }
  @override
  Widget build(BuildContext context) {
  return GestureDetector(
        child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01) +
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01), // +
        width: MediaQuery.of(context).size.width * 0.275,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorFondo,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.nuevoIcono,
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(widget.nuevoTexto, style: TextStyle(color: colorTexto)),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.nuevaRuta),
        );
      },
    );
  }
}