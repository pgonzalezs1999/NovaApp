import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaOpcionesDepositar.dart';
import 'package:flutter_prueba/PantallaOpcionesEnviar.dart';
import 'package:flutter_prueba/PantallaPerfil.dart';
import 'package:flutter_prueba/PantallaPortfolio.dart';
import 'package:flutter_prueba/PantallaTodosMovimientos.dart';
import 'package:flutter_prueba/PantallaDetalleTransaccion.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/TarjetaTransferencia.dart';
import 'package:flutter_prueba/Prefabs/TarjetaFeatures.dart';

class PantallaMain extends StatefulWidget {
  const PantallaMain({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => PantallaMainState();
}

class PantallaMainState extends State<PantallaMain> {
  void Anadir() {
    print("Hola");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.075,
              right: MediaQuery.of(context).size.width * 0.075,
              bottom: MediaQuery.of(context).size.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.015),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hola, Pablo", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        Text("¡Bienvenido de nuevo!", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05,
                          bottom: MediaQuery.of(context).size.height * 0.015),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/youp.png", width: 50),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const PantallaPerfil()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: FondoGrupo(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tu balance", style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                                ),
                                Text("\$ 98,271.00", style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.north_east_outlined, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text("Cuenta personal", style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PantallaPortfolio()),
                  );
                },
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly
                  ,
                  children: [
                    TarjetaFeatures(Icon(Icons.save_alt_outlined, size: 30), "Depositar", PantallaOpcionesDepositar()),
                    TarjetaFeatures(Icon(Icons.upload_outlined, size: 30), "Enviar", PantallaOpcionesEnviar()),
                    //TarjetaFeatures(Icon(Icons.send_outlined, size: 30), "Transferir", PantallaPerfil()),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.01,),
                child: Text("ÚLTIMOS MOVIMIENTOS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              GestureDetector(
                child: Container(
                  child: FondoGrupo(
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("HOY", style: TextStyle(fontSize: 12)),
                        TarjetaTransferencia(PantallaDetalleTransaccion(), "Uber", "09/05/2022", "13:35", "23.95", Image.asset("assets/images/youp.png", width: 50)),
                        TarjetaTransferencia(PantallaDetalleTransaccion(), "Telepizza", "08/05/2022", "01:31", "18.90", Image.asset("assets/images/youp.png", width: 50)),
                        TarjetaTransferencia(PantallaDetalleTransaccion(), "Movistar", "08/05/2022", "00:00", "23.95", Image.asset("assets/images/youp.png", width: 50)),
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("Ver todos los movimientos"),
                                Container(
                                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015),
                                  child: Icon(Icons.add_outlined, color: Colors.white, size: 20),
                                ),
                              ],
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaTodosMovimientos()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}