import 'package:flutter/material.dart';
import 'package:flutter_prueba/Prefabs/TarjetaFeatures.dart';
import 'package:flutter_prueba/PantallaLogin.dart';

class PantallaFeatures extends StatelessWidget {
  const PantallaFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color colorTarjetas = Color(0xBBFFFFFF);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.035) +
          EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.035), // +,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TarjetaFeatures(Icon(Icons.details_outlined, size: 30, color: colorTarjetas), "Buy criptos", PantallaLogin()),
                TarjetaFeatures(Icon(Icons.settings_ethernet_outlined, size: 30, color: colorTarjetas), "Set Limits", PantallaLogin()),
                TarjetaFeatures(Icon(Icons.https_outlined, size: 30, color: colorTarjetas), "Block Card", PantallaLogin()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TarjetaFeatures(Icon(Icons.import_export_outlined, size: 30, color: colorTarjetas), "Transfer", PantallaLogin()),
                TarjetaFeatures(Icon(Icons.save_alt_outlined, size: 30, color: colorTarjetas), "Withdraw", PantallaLogin()),
                TarjetaFeatures(Icon(Icons.account_balance_outlined, size: 30, color: colorTarjetas), "Load Funds", PantallaLogin()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}