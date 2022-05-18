import 'package:flutter/material.dart';
import 'package:flutter_prueba/Prefabs/FlechaVolver.dart';
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/BotonConIcono.dart';
import 'package:flutter_prueba/main.dart';

class PantallaPerfil extends StatefulWidget {
  const PantallaPerfil({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => PantallaPerfilState();
}

class PantallaPerfilState extends State<PantallaPerfil> {
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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset("assets/images/youp.png", width: 80),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pablo González Sánchez",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )),
                    TextButton(
                      onPressed: () {},
                      child: Text("Editar perfil"),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025),
              child: FondoGrupo(
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("ID CUENTA", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("123-123333-2212-312", style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            //Navigator.of(context).pop(context);
                          },
                          child: const Text('Depositar'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            //Navigator.of(context).pop(context);
                          },
                          child: const Text('Retirar'),
                        ),
                        //BotonConIcono(Icon(Icons.north_east_outlined), "Depositar"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025),
              child: FondoGrupo(
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("ID CUENTA", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("123-123333-2212-312", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).pop(context);
                },
                child: const Text('Transferir entre cuentas'),
              ),
            ),
            Row(
              children: [
                Text("Modo oscuro"),
                Switch(value: instanciaTema.themeMode == ThemeMode.dark, onChanged: (value) {
                  instanciaTema.toogleTema(value);
                  setState(() {
                    value = !value;
                  });
                },
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Text("Cerrar sesión"),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}