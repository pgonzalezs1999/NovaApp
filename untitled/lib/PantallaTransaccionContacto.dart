import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaDepositoExitoso.dart';
import 'package:flutter_prueba/PantallaDepositoFallido.dart';
import 'package:flutter_prueba/PantallaPoliticasPrivacidad.dart';
import 'package:flutter_prueba/PantallaTransaccionExitosa.dart';
import 'package:flutter_prueba/PantallaTransaccionFallida.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/GrupoDeposito.dart';

class PantallaTransaccionContacto extends StatelessWidget {
  const PantallaTransaccionContacto({Key? key}) : super(key: key);

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
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
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
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BARTOLOMÉ CRUZ CASAS", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      Text("+34 622 41 55 17", style: TextStyle(fontSize: 15, color: Color(0xCC33CCFF))),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.015),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/images/youp.png", width: 40),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FondoGrupo(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("USDT", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                      Text("Saldo: \$3.00"),
                    ],
                  ),
                  Text("\$2.02", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                  bottom: MediaQuery.of(context).size.height * 0.015),
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
              decoration: BoxDecoration(
                color: Color(0x28FFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x22000000),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Añadir concepto (opcional)",
                  hintStyle: TextStyle(color: Color(0x77FFFFFF)),
                  border: InputBorder.none,
                ),
              ),
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
                            builder: (context) => const PantallaTransaccionExitosa()
                        ),
                      );
                    },
                    child: Text("Enviar"),
                  ),
                ),
                Align(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PantallaTransaccionFallida()
                        ),
                      );
                    },
                    child: Text("(aux) Enviar con error"),
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