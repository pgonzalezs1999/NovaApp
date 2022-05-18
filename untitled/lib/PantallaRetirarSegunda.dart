import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaDepositoExitoso.dart';
import 'package:flutter_prueba/PantallaDepositoFallido.dart';
import 'package:flutter_prueba/PantallaPoliticasPrivacidad.dart';
import 'package:flutter_prueba/PantallaRetiroExitoso.dart';
import 'package:flutter_prueba/PantallaRetiroFallido.dart';
import 'package:flutter_prueba/Prefabs/FlechaVolver.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/GrupoDeposito.dart';

class PantallaRetirarSegunda extends StatelessWidget {
  const PantallaRetirarSegunda({Key? key}) : super(key: key);

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
                child: Text("RETIRO COP", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
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
                        Text("Retiro por transacción bancario"),
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
                            child: Image.asset("assets/images/COP.png", width: 50),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                            child: Text("\$81,640.00", style: TextStyle(fontSize: 40)),
                          ),
                        ],
                      ),
                    ),
                    Text("\$20.00 USDT"),
                  ],
                ),
              ),
            ),
            GrupoDeposito("Cartera de destino", "Selecciona una cartera de destino"),
            GrupoDeposito("Concepto del retiro", "Concepto (opcional)"),
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
                            builder: (context) => const PantallaRetiroExitoso()
                        ),
                      );
                    },
                    child: Text("Retirar"),
                  ),
                ),
                Align(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PantallaRetiroFallido()
                        ),
                      );
                    },
                    child: Text("(aux) Retirar con error"),
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