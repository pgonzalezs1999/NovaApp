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
  int _numNav = 1;
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
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05,
                bottom: MediaQuery.of(context).size.height * 0.015),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset("assets/images/youp.png", width: 50),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PantallaPerfil()),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.68,
              child: _listaPantallas.elementAt(_numNav),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.25,
          right: MediaQuery.of(context).size.width * 0.25,
          bottom: MediaQuery.of(context).size.height * 0.03,
          top: MediaQuery.of(context).size.height * 0.03),
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