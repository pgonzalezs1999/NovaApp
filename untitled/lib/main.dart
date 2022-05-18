import 'package:flutter/material.dart';
import 'package:flutter_prueba/Dashboard.dart';
import 'package:flutter_prueba/PantallaSplash.dart';
import 'Configuracion/Temas.dart';
import 'Configuracion/CambiarTemas.dart';

void main() {
  runApp(MyApp());
}

CambiarTemas nuevoCambiarTemas = CambiarTemas();

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}
class MyAppState extends State<MyApp> {
  @override
  void dispose() {
  nuevoCambiarTemas.removeListener(themeListener);
    super.dispose();
  }
  @override
  void initState() {
    nuevoCambiarTemas.addListener(themeListener);
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
      themeMode: nuevoCambiarTemas.themeMode,
      /*theme: ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Color(0xFF0D47A1),
      iconTheme: IconThemeData(
        color: Color(0xAAFFFFFF),
      ),
      textTheme: const TextTheme(
        bodyText2: TextStyle(color: Color(0XCCFFFFFF)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) => Color(0xFF009FD4)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
          ),
          elevation: MaterialStateProperty.all(4),
          shadowColor: MaterialStateProperty.all<Color>(Colors.black),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) => TextStyle(
            fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),*/
      /*darkTheme: ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      iconTheme: IconThemeData(
        color: Color(0xAAFFFFFF),
      ),
      textTheme: const TextTheme(
        bodyText2: TextStyle(color: Color(0XCCFFFFFF)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) => Color(0xFF009FD4)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          ),
          elevation: MaterialStateProperty.all(4),
          shadowColor: MaterialStateProperty.all<Color>(Colors.black),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) => TextStyle(
            fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),*/
      //home: PantallaSplash(),
      home: Dashboard(),
    );
  }
}