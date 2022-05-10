import "package:flutter/material.dart";
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/TarjetaContacto.dart';
import 'package:flutter_prueba/Prefabs/TarjetaTransferencia.dart';

class PantallaTodosMovimientos extends StatefulWidget {
  const PantallaTodosMovimientos();
  @override
  State<StatefulWidget> createState() {
    return PantallaTodosMovimientosState();
  }
}

class PantallaTodosMovimientosState extends State<PantallaTodosMovimientos> {
  void Anadir() {
    print("Hola");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.075,
              right: MediaQuery.of(context).size.width * 0.075,
              bottom: MediaQuery.of(context).size.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TODOS LOS MOVIMIENTOS", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Container(
                child: FondoGrupo(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("TODOS LOS CONTACTOS", style: TextStyle(color: Colors.white, fontSize: 12)),
                          GestureDetector(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Icon(Icons.add_outlined, color: Colors.white),
                            ),
                            onTap: () {
                              //Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      TarjetaTransferencia(PantallaTodosMovimientos(), "Uber", "12/12/2012", "12:34", "29.99", Image.asset("assets/images/youp.png", width: 50)),
                      TarjetaContacto("ÁLVARO FARRENY", "farrenyalvaro@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                      TarjetaContacto("ANDRÉS PÉREZ", "loquesea@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                      TarjetaContacto("PABLO GONZÁLEZ", "pgonzalezs1999@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                      TarjetaContacto("ÁLVARO FARRENY", "farrenyalvaro@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                      TarjetaContacto("ANDRÉS PÉREZ", "loquesea@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}