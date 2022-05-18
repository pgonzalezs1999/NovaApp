import 'package:flutter/material.dart';
import 'package:flutter_prueba/Dashboard.dart';
import 'package:flutter_prueba/PantallaSplash.dart';
import 'Configuracion/Temas.dart';
import 'Configuracion/CambiarTemas.dart';

void main() {
  runApp(MyApp());
}

CambiarTemas instanciaTema = CambiarTemas();

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}
class MyAppState extends State<MyApp> {
  @override
  void dispose() {
    instanciaTema.removeListener(themeListener);
    super.dispose();
  }
  @override
  void initState() {
    instanciaTema.addListener(themeListener);
    super.initState();
  }
  themeListener(){
    if(mounted){
      setState(() {

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nova',
      theme: modoBlanco,
      darkTheme: modoNegro,
      themeMode: instanciaTema.themeMode,
      //home: PantallaSplash(),
      home: Dashboard(),
    );
  }
}