import 'package:flutter/material.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/BotonConIcono.dart';

class PantallaOpcionesEnviar extends StatelessWidget {
  const PantallaOpcionesEnviar({Key? key}) : super(key: key);

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
            Container(
              padding: EdgeInsets.only(bottom: 20, right: 20, left: 10),
              child: GestureDetector(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Icon(Icons.arrow_back_outlined, color: Colors.white, size: 30),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
              child: Align(
                alignment: Alignment.center,
                child: Text("RETIRO", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
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
                                  Text("TRANSACCIÓN BANCARIA", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}