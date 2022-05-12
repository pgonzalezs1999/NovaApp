import "package:flutter/material.dart";
import 'package:flutter_prueba/PantallaDetalleTransaccion.dart';
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
              Text("TODOS LOS MOVIMIENTOS", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.025),
                child: FondoGrupo(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01,
                            bottom: MediaQuery.of(context).size.height * 0.005),
                        child: Text("HOY"),
                      ),
                      TarjetaTransferencia(PantallaDetalleTransaccion(), "Uber", "12/12/2012", "12:34", "29.99", Image.asset("assets/images/youp.png", width: 50)),
                      TarjetaTransferencia(PantallaDetalleTransaccion(), "Uber", "12/12/2012", "12:34", "29.99", Image.asset("assets/images/youp.png", width: 50)),
                      Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                            bottom: MediaQuery.of(context).size.height * 0.005),
                        child: Text("AYER"),
                      ),
                      TarjetaTransferencia(PantallaDetalleTransaccion(), "Uber", "12/12/2012", "12:34", "29.99", Image.asset("assets/images/youp.png", width: 50)),
                      Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                            bottom: MediaQuery.of(context).size.height * 0.005),
                        child: Text("10/12/2022"),
                      ),
                      TarjetaTransferencia(PantallaDetalleTransaccion(), "Uber", "12/12/2012", "12:34", "29.99", Image.asset("assets/images/youp.png", width: 50)),
                      Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                            bottom: MediaQuery.of(context).size.height * 0.005),
                        child: Text("07/12/2022"),
                      ),
                      TarjetaTransferencia(PantallaDetalleTransaccion(), "Uber", "12/12/2012", "12:34", "29.99", Image.asset("assets/images/youp.png", width: 50)),
                      TarjetaTransferencia(PantallaDetalleTransaccion(), "Uber", "12/12/2012", "12:34", "29.99", Image.asset("assets/images/youp.png", width: 50)),
                      TarjetaTransferencia(PantallaDetalleTransaccion(), "Uber", "12/12/2012", "12:34", "29.99", Image.asset("assets/images/youp.png", width: 50)),
                      Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                            bottom: MediaQuery.of(context).size.height * 0.005),
                        child: Text("02/12/2022"),
                      ),
                      TarjetaTransferencia(PantallaDetalleTransaccion(), "Uber", "12/12/2012", "12:34", "29.99", Image.asset("assets/images/youp.png", width: 50)),
                      TarjetaTransferencia(PantallaDetalleTransaccion(), "Uber", "12/12/2012", "12:34", "29.99", Image.asset("assets/images/youp.png", width: 50)),
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