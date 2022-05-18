import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaDepositarPrimera.dart';
import 'package:flutter_prueba/Prefabs/FlechaVolver.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/BotonConIcono.dart';

class PantallaOpcionesDepositar extends StatelessWidget {
  const PantallaOpcionesDepositar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlechaVolver(),
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
              child: Align(
                alignment: Alignment.center,
                child: Text("DEPÓSITO COP", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20, right: 20, left: 10),
              child: FondoGrupo(
                  Column(
                    children: [
                    GestureDetector(
                      child: FondoGrupo(
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.account_balance_outlined, size: MediaQuery.of(context).size.width * 0.15),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("BANCO", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PantallaDepositarPrimera()),
                        );
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                    GestureDetector(
                      child: FondoGrupo(
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.credit_card_outlined, size: MediaQuery.of(context).size.width * 0.15),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("TARJETA", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                  Text("CRÉDITO/DÉBITO", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PantallaDepositarPrimera()),
                        );
                      },
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}