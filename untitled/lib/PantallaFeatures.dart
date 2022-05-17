import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaConvertir.dart';
import 'package:flutter_prueba/Prefabs/TarjetaFeatures.dart';
import 'package:flutter_prueba/PantallaLogin.dart';
import 'package:flutter_prueba/PantallaCriptos.dart';

class PantallaFeatures extends StatelessWidget {
  const PantallaFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.035,
          right: MediaQuery.of(context).size.width * 0.035), // +,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TarjetaFeatures(const Icon(Icons.details_outlined, size: 30), "Comprar criptos", PantallaCriptos()),
                TarjetaFeatures(const Icon(Icons.settings_ethernet_outlined, size: 30), "Convertir", PantallaConvertir()),
                //TarjetaFeatures(const Icon(Icons.https_outlined, size: 30), "Block Card", PantallaLogin()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //TarjetaFeatures(const Icon(Icons.import_export_outlined, size: 30), "Transfer", PantallaLogin()),
                //arjetaFeatures(const Icon(Icons.save_alt_outlined, size: 30), "Withdraw", PantallaLogin()),
                //TarjetaFeatures(const Icon(Icons.account_balance_outlined, size: 30), "Load Funds", PantallaLogin()),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
              width: MediaQuery.of(context).size.width * 0.75,
              child: Text("(se ve feo porque está pensado para que hallan 3 botones por fila, cuando sean más definitivos los extras lo ajusto mejor)",
                textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}