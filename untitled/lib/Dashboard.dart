import 'package:flutter/material.dart';
import 'package:flutter_prueba/PantallaMain.dart';
import 'package:flutter_prueba/PantallaTransferencias.dart';
import 'package:flutter_prueba/PantallaFeatures.dart';
import 'package:flutter_prueba/PantallaPerfil.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  int _numNav = 0;
  static const List<Widget> _listaPantallas = <Widget>[
    PantallaMain(),
    PantallaTransferencias(),
    PantallaFeatures(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _numNav = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06),
        child: Column(
            children: [
              Expanded(
                child: Container(
                  child: _listaPantallas.elementAt(_numNav),
                ),
              ),
            ],
          ),
        ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.25,
          right: MediaQuery.of(context).size.width * 0.25,
          bottom: MediaQuery.of(context).size.height * 0.025,
          top: MediaQuery.of(context).size.height * 0.025),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            unselectedItemColor: Color(0xFF0D47A1),
            selectedItemColor: Color(0xCCFFFFFF),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Color(0x77FFFFFF),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 30),
                label: 'Inicio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.compare_arrows_outlined, size: 30),
                label: 'Historial',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.border_all_outlined, size: 30),
                label: 'Features',
              ),
            ],
            currentIndex: _numNav,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}