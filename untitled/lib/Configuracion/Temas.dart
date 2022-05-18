import 'package:flutter/material.dart';

ThemeData modoBlanco = ThemeData(
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
);

ThemeData modoNegro = ThemeData(
  brightness: Brightness.light,
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
);