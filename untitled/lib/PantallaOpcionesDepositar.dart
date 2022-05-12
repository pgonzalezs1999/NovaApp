import 'package:flutter/material.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/FondoLog.dart';
import 'package:flutter_prueba/Prefabs/PantallaRegistradoCorrectamente.dart';

class PantallaOpcionesDepositar extends StatefulWidget {
  const PantallaOpcionesDepositar({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => PantallaOpcionesDepositarState();
}

class PantallaOpcionesDepositarState extends State<PantallaOpcionesDepositar> {
  void Anadir() {
    print("Hola");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        color: Color(0xFF0D47A1),
        padding:
        EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08) +
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.08) +
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              child: Icon(Icons.arrow_back_outlined, color: Colors.white, size: MediaQuery.of(context).size.width * 0.08),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.001),
              width: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                children: [
                  Text("DEPÓSITO COP"),
                  FondoGrupo(
                    FondoGrupo(
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.account_balance_outlined),
                          Text("Depositar"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}