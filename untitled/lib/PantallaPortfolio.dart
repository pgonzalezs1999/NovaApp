import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaOpcionesDepositar.dart';
import 'package:flutter_prueba/PantallaOpcionesRetirar.dart';
import 'package:flutter_prueba/PantallaPerfil.dart';
import 'package:flutter_prueba/Prefabs/BotonConIcono.dart';
import 'package:flutter_prueba/Prefabs/FlechaVolver.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/TarjetaInversion.dart';

class PantallaPortfolio extends StatefulWidget {
  const PantallaPortfolio({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => PantallaPortfolioState();
}

class PantallaPortfolioState extends State<PantallaPortfolio> {
  void Anadir() {
    print("Hola");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06,
            bottom: MediaQuery.of(context).size.height * 0.06,
            right: MediaQuery.of(context).size.width * 0.05,
            left: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlechaVolver(),
                  Container(
                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.005),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/images/youp.png", width: 50),
                      ),
                    ),
                  ),
                ],
              ),
              Text("Portfolio", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,
                    bottom: MediaQuery.of(context).size.height * 0.015,
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05),
                child: FondoGrupo(
                    Column(
                      children: [
                        Text("Balance total", style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.005),
                          child: Text("\$98,271.00", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.005,
                            bottom: MediaQuery.of(context).size.height * 0.005),
                          child: Text("+ \$342.87", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF00FF00))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.005,
                              bottom: MediaQuery.of(context).size.height * 0.015),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02,
                                    left: MediaQuery.of(context).size.width * 0.02),
                                child: BotonConIcono(Icon(Icons.arrow_upward_outlined, color: Color(0x99FFFFFF), size: 20), "Depositar", PantallaOpcionesDepositar()),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02,
                                    left: MediaQuery.of(context).size.width * 0.02),
                                child: BotonConIcono(Icon(Icons.arrow_downward_outlined, color: Color(0x99FFFFFF), size: 20), "Retirar", PantallaOpcionesRetirar()),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.wallet_outlined, color: Colors.white),
                            Text("0x2Cc6F65847EC39F87E25620A036"),
                          ],
                        ),
                      ],
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.015),
                child: Text("Mis inversiones", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              TarjetaInversion("Bitcoin", "BTC", "0.6", "31,398.34", "-3.91"),
              TarjetaInversion("Ethereum", "ETH", "1.45", "2,453.97", "-4.87"),
              TarjetaInversion("Tether", "USDT", "287", "0.9998", "-0.0003"),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_outlined, color: Colors.blue),
                    Text("Add Token", style: TextStyle(color: Colors.blue)),
                  ],
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}