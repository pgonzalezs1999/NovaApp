import "package:flutter/material.dart";
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/TarjetaContacto.dart';
import 'package:flutter_prueba/Prefabs/TarjetaTransferencia.dart';

class PantallaDetalleTransaccion extends StatefulWidget {
  const PantallaDetalleTransaccion();
  @override
  State<StatefulWidget> createState() {
    return PantallaDetalleTransaccionState();
  }
}

class PantallaDetalleTransaccionState extends State<PantallaDetalleTransaccion> {
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
              top: MediaQuery.of(context).size.height * 0.06,
              bottom: MediaQuery.of(context).size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
                  child: Icon(Icons.arrow_back_outlined, color: Colors.white, size: 35),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                    bottom: MediaQuery.of(context).size.height * 0.03),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Icon(Icons.local_pizza, size: MediaQuery.of(context).size.width * 0.12),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("McDonalds", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                                Text("26/07/2021 - 13:34h", style: TextStyle(fontSize: 15)),
                              ],
                            ),
                          ),
                          Text("\$12.95", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                child: FondoGrupo(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("AÑADIR NOTA", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                      Icon(Icons.add_outlined, color: Colors.white, size: 25),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                child: FondoGrupo(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("DESCARGAR FACTURA", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                      Icon(Icons.add_outlined, color: Colors.white, size: 25),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                child: FondoGrupo(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("GUARDAR EN CATEGORÍA", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                      Icon(Icons.add_outlined, color: Colors.white, size: 25),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                child: FondoGrupo(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("INFORMAR DE UN ERROR", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                      Icon(Icons.add_outlined, color: Colors.white, size: 25),
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