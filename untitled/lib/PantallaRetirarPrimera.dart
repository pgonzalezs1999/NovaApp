import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaRetirarSegunda.dart';
import 'package:flutter_prueba/Prefabs/FlechaVolver.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/PantallaDepositarSegunda.dart';
import 'package:flutter_prueba/Prefabs/BotonConIcono.dart';

class PantallaRetirarPrimera extends StatelessWidget {
  const PantallaRetirarPrimera({Key? key}) : super(key: key);

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
              padding: EdgeInsets.only(bottom: 20, right: 20, left: 10),
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
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025,
                        bottom: MediaQuery.of(context).size.height * 0.02),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/USDT.png", width: 50),
                          ),
                          Icon(Icons.compare_arrows_outlined, size: 50, color: Color(0xAAFFFFFF)),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/COP.png", width: 50),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Cantidad en pesos",
                          hintStyle: TextStyle(color: Color(0x77FFFFFF)),
                          contentPadding:
                          EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02) +
                              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01,
                          bottom: MediaQuery.of(context).size.height * 0.025),
                      child: Text("Disponible: 3,00.30 USDT"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PantallaRetirarSegunda()
                          ),
                        );
                      },
                      child: Text("Continuar"),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text("1 USDT = 4.087,33 \$", style: TextStyle(color: Color(0xBBFFFFFF))),
            ),
          ],
        ),
      ),
    );
  }
}