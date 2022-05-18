import 'package:flutter/material.dart';

class CambiarTemas with ChangeNotifier {

  ThemeMode miTema = ThemeMode.system;
  get themeMode => miTema;

  toogleTema(bool esOscuro)
  {
    miTema = esOscuro ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
