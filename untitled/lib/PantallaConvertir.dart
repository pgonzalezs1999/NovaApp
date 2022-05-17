import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaConversionExitosa.dart';
import 'package:flutter_prueba/PantallaConversionFallida.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/PantallaDepositarSegunda.dart';
import 'package:flutter_prueba/Prefabs/BotonConIcono.dart';

class PantallaConvertir extends StatefulWidget {
  const PantallaConvertir({Key? key}) : super(key: key);
  @override
  State<PantallaConvertir> createState() => PantallaConvertirState();
}

class PantallaConvertirState extends State<PantallaConvertir> {
  String desplegableAvalor = 'BTC';
  String desplegableBvalor = 'ETH';
  double valorBTC = 29864.0;
  double valorETH = 2843.0;
  double valorUSDT = 1.0;
  double valorCOP = 0.00025;
  double disponibleBTC = 1400.81;
  int primero = 0;
  int segundo = 1;
  double cantidad = 0;
  double conversion = 0;
  List<double> precios = <double>[];
  List<String> nombres = <String>["BTC", "ETH", "USDT", "COP"];
  List<double> disponibles = <double>[];

  void initState() {
    precios.add(valorBTC);
    precios.add(valorETH);
    precios.add(valorUSDT);
    precios.add(valorCOP);
    disponibles.add(0.0);
    disponibles.add(0.0);
    disponibles.add(disponibleBTC);
    disponibles.add(0.0);
    conversion = cantidad*precios[primero] / precios[segundo];
    print(precios);
  }

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
              child: Align(
                alignment: Alignment.center,
                child: Text("Dinero disponible", style: TextStyle(fontSize: 15)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
              child: Align(
                alignment: Alignment.center,
                child: Text("\$" + disponibles[2].toString(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20, right: 20, left: 10),
              child: FondoGrupo(
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Convertir de", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    hintText: "Introduce una cantidad",
                                    hintStyle: TextStyle(color: Color(0x77FFFFFF)),
                                    border: InputBorder.none,
                                    contentPadding:
                                    EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02) +
                                        EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02)
                                ),
                                onChanged: (text) {
                                  try
                                  {
                                    conversion = cantidad*precios[primero] / precios[segundo];
                                    cantidad = double.parse(text);
                                  }
                                  catch(e) { }
                                },
                              ),
                            ),
                            Text(disponibles[primero].toString() + " " + nombres[primero].toString() + " disponibles", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.025),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DropdownButton<String>(
                            value: desplegableAvalor,
                            style: TextStyle(color: Color(0xAA000000), fontWeight: FontWeight.w900),
                            underline: Container(),
                            dropdownColor: Color(0xFFFFFFFF),
                            onChanged: (String? newValue) {
                              setState(() {
                                desplegableAvalor = newValue!;
                                if(desplegableAvalor == "BTC") { primero = 0; }
                                else if(desplegableAvalor == "ETH") { primero = 1; }
                                else if(desplegableAvalor == "USDT") { primero = 2; }
                                else if(desplegableAvalor == "COP") { primero = 3; }
                                conversion = cantidad*precios[primero] / precios[segundo];
                              });
                            },
                            items: <String>['BTC', 'ETH', 'USDT', 'COP'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                        decoration: BoxDecoration(
                          color: Color(0xFF1199FF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.compare_arrows_outlined, size: 25),
                      ),
                      onTap: () {
                        setState(() {
                          String aux1 = desplegableAvalor;
                          desplegableAvalor = desplegableBvalor;
                          desplegableBvalor = aux1;
                          int aux2 = primero;
                          primero = segundo;
                          segundo = aux2;
                          conversion = cantidad*precios[primero] / precios[segundo];
                        });
                      },
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Convertir a", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                              child: Text(conversion.toString() + " " + nombres[segundo], style: TextStyle(fontSize: 20)),
                            ),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.025),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DropdownButton<String>(
                            value: desplegableBvalor,
                            style: TextStyle(color: Color(0xAA000000), fontWeight: FontWeight.w900),
                            underline: Container(),
                            dropdownColor: Color(0xFFFFFFFF),
                            onChanged: (String? newValue) {
                              setState(() {
                                desplegableBvalor = newValue!;
                                if(desplegableBvalor == "BTC") { segundo = 0; }
                                else if(desplegableBvalor == "ETH") { segundo = 1; }
                                else if(desplegableBvalor == "USDT") { segundo = 2; }
                                else if(desplegableBvalor == "COP") { segundo = 3; }
                                conversion = cantidad*precios[primero] / precios[segundo];
                              });
                            },
                            items: <String>['BTC', 'ETH', 'USDT', 'COP'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              child: ElevatedButton(
                child: const Text('Convertir'),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  FocusScope.of(context).unfocus(); // Que no abra el teclado al volver al login
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaConversionExitosa()),
                  );
                },
              ),
            ),
            Align(
              child: ElevatedButton(
                child: const Text('(aux) Convertir con error'),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  FocusScope.of(context).unfocus(); // Que no abra el teclado al volver al login
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaConversionFallida()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}