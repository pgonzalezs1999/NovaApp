import 'package:flutter/material.dart';

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.075,
          right: MediaQuery.of(context).size.width * 0.075),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ÚLTIMOS MOVIMIENTOS", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}