import "package:flutter/material.dart";
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/TarjetaContacto.dart';

class PantallaTransferencias extends StatefulWidget {
  const PantallaTransferencias();
  @override
  State<StatefulWidget> createState() {
    return PantallaTransferenciasState();
  }
}

class PantallaTransferenciasState extends State<PantallaTransferencias> {
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
            Text("TRANSFERENCIAS", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Align(
              alignment: Alignment.center,
              child: Text("\$ 98,271.00", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text("MI CUENTA: 1231230120301", style: TextStyle(color: Colors.white, fontSize: 12)),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025,
                  bottom: MediaQuery.of(context).size.height * 0.025),
              child: FondoGrupo(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enviar dinero a", style: TextStyle(color: Color(0xBBFFFFFF))),
                    TextField(
                      autofocus: false,
                      style: TextStyle(color: Color(0x77FFFFFF), fontSize: 14),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
                        fillColor: Colors.white,
                        hintText: 'Dirección de cartera o nombre del contacto',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: SingleChildScrollView(
                child: FondoGrupo(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("TODOS LOS CONTACTOS", style: TextStyle(color: Colors.white, fontSize: 12)),
                          GestureDetector(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Icon(Icons.add_outlined, color: Colors.white),
                            ),
                            onTap: () {
                              //Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      TarjetaContacto("PABLO GONZÁLEZ", "pgonzalezs1999@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                      TarjetaContacto("ÁLVARO FARRENY", "farrenyalvaro@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                      TarjetaContacto("ANDRÉS PÉREZ", "loquesea@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                      TarjetaContacto("PABLO GONZÁLEZ", "pgonzalezs1999@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                      TarjetaContacto("ÁLVARO FARRENY", "farrenyalvaro@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                      TarjetaContacto("ANDRÉS PÉREZ", "loquesea@gmail.com", Image.asset("assets/images/youp.png", width: 40)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}