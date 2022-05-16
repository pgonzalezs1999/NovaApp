import 'package:flutter/material.dart';
import 'package:flutter_prueba/Prefabs/TarjetaFeatures.dart';
import 'package:flutter_prueba/PantallaLogin.dart';
import 'package:flutter_prueba/PantallaCriptos.dart';

class PantallaFeatures extends StatelessWidget {
  const PantallaFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.035) +
          EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.035), // +,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TarjetaFeatures(const Icon(Icons.details_outlined, size: 30), "Buy criptos", PantallaCriptos()),
                //TarjetaFeatures(const Icon(Icons.settings_ethernet_outlined, size: 30), "Set Limits", PantallaLogin()),
                //TarjetaFeatures(const Icon(Icons.https_outlined, size: 30), "Block Card", PantallaLogin()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //TarjetaFeatures(const Icon(Icons.import_export_outlined, size: 30), "Transfer", PantallaLogin()),
                //TarjetaFeatures(const Icon(Icons.save_alt_outlined, size: 30), "Withdraw", PantallaLogin()),
                //TarjetaFeatures(const Icon(Icons.account_balance_outlined, size: 30), "Load Funds", PantallaLogin()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}