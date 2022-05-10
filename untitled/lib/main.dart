import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaLogIn.dart';

void main() {
  runApp(MaterialApp(
    title: 'Nova',
    theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0D47A1),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Color(0xDDFFFFFF),
          ),
          headline2: TextStyle(
            color: Color(0xDDFFFFFF),
          ),
          headline3: TextStyle(
            color: Color(0xDDFFFFFF),
          ),
          headline4: TextStyle(
            color: Color(0xDDFFFFFF),
          ),
          headline5: TextStyle(
            color: Color(0xDDFFFFFF),
          ),
          headline6: TextStyle(
            color: Color(0xDDFFFFFF),
          ),
          bodyText1: TextStyle(
            color: Color(0xDDFFFFFF),
          ),
          bodyText2: TextStyle(
            color: Color(0xDDFFFFFF),
          ),
          subtitle1: TextStyle(
              color: Color(0xDDFFFFFF),
          ),
          subtitle2: TextStyle(
            color: Color(0xDDFFFFFF),
          ),
        ),
      iconTheme: IconThemeData(
        color: Color(0xAAFFFFFF),
      ),
    ),
    home: PantallaLogin(),
  ));
}