import 'package:flutter/material.dart';
import 'package:flutter_prueba/Prefabs/FlechaVolver.dart';
import 'package:flutter_prueba/Prefabs/TarjetaCripto.dart';

class PantallaCriptos extends StatefulWidget {
  const PantallaCriptos({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => PantallaCriptosState();
}

class PantallaCriptosState extends State<PantallaCriptos> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08,
            right: MediaQuery.of(context).size.width * 0.08,
            top: MediaQuery.of(context).size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlechaVolver(),
            Text("Criptomonedas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.width * 0.03),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search coin here",
                  prefixIcon: Icon(Icons.search_outlined, color: Color(0x55000000)),
                  contentPadding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05,
                      top: MediaQuery.of(context).size.height * 0.02),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Live prices", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                IconButton(onPressed: () {}, icon: Icon(Icons.add_outlined, color: Colors.white, size: 30)),
              ],
            ),
            TarjetaCripto("Bitcoin", "BTC", "0.6", "31,998.43", "-12.35"),
            TarjetaCripto("Ethereum", "ETH", "0.9", "2871.38", "-9.47"),
            TarjetaCripto("Tether", "USDT", "231", "1.00012", "+0.02"),
          ],
        ),
      ),
    );
  }
}