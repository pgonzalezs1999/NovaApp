import 'package:flutter/material.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/BotonConIcono.dart';

class PantallaDepositarPrimera extends StatelessWidget {
  const PantallaDepositarPrimera({Key? key}) : super(key: key);

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
              padding: EdgeInsets.only(bottom: 20, right: 20, left: 10),
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
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
              child: Align(
                alignment: Alignment.center,
                child: Text("DEPÓSITO COP", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
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
                        Text("Depósito bancario"),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025,
                          bottom: MediaQuery.of(context).size.height * 0.02),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/images/COP.png", width: 50),
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
                      child: Text("10 USDT"),
                    ),
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: Text("Continuar")),
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