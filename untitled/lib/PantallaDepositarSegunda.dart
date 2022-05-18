import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaDepositoExitoso.dart';
import 'package:flutter_prueba/PantallaDepositoFallido.dart';
import 'package:flutter_prueba/PantallaPoliticasPrivacidad.dart';
import 'package:flutter_prueba/Prefabs/FlechaVolver.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/GrupoDeposito.dart';

class PantallaDepositarSegunda extends StatelessWidget {
  const PantallaDepositarSegunda({Key? key}) : super(key: key);

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
              child: FondoGrupo(
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_balance_outlined),
                        Text("Depósito bancario"),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                          bottom: MediaQuery.of(context).size.height * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/USDT.png", width: 50),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                            child: Text("\$10", style: TextStyle(fontSize: 40)),
                          ),
                        ],
                      ),
                    ),
                    Text("COP \$40,820.00"),
                  ],
                ),
              ),
            ),
            GrupoDeposito("Banco", "Selecciona tu banco"),
            GrupoDeposito("Tipo de cuenta", "Selecciona la cuenta"),
            GrupoDeposito("Comprobante de operación", "Selecciona el comprobante"),
            GrupoDeposito("Número del documento de identidad", "Número del documento"),
            Container(
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.0075),
              child: TextButton(
                  child: Text("Al hacer click en depositar, estás aceptando los términos y condiciones. Para más información, pulsa aquí",
                    style: TextStyle(fontSize: 12, color: Color(0x77FFFFFF)),
                    textAlign: TextAlign.center
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PantallaPoliticasPrivacidad()
                    ),
                  );
                }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PantallaDepositoExitoso()
                        ),
                      );
                    },
                    child: Text("Depositar"),
                  ),
                ),
                Align(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PantallaDepositoFallido()
                        ),
                      );
                    },
                    child: Text("(aux) Depositar con error"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}