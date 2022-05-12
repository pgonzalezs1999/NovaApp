import "package:flutter/material.dart";
import 'package:flutter_prueba/Prefabs/FondoGrupo.dart';
import 'package:flutter_prueba/Prefabs/TarjetaContacto.dart';
import 'package:flutter_prueba/Prefabs/TarjetaTransferencia.dart';

class PantallaPoliticasPrivacidad extends StatefulWidget {
  const PantallaPoliticasPrivacidad();
  @override
  State<StatefulWidget> createState() {
    return PantallaPoliticasPrivacidadState();
  }
}

class PantallaPoliticasPrivacidadState extends State<PantallaPoliticasPrivacidad> {
  void Anadir() {
    print("Hola");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Política de privacidad", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.075,
              right: MediaQuery.of(context).size.width * 0.075,
              top: MediaQuery.of(context).size.height * 0.04,
              bottom: MediaQuery.of(context).size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium odio vel magna fermentum sagittis. Phasellus consectetur nisi ligula, et faucibus mauris pharetra sollicitudin. Nullam turpis neque, ullamcorper non auctor id, placerat a nisl. Sed bibendum, massa eget cursus efficitur, tellus quam facilisis quam, ac rutrum elit enim quis neque. Fusce at vestibulum metus, sit amet aliquet nibh. Sed sodales, dui in varius consequat, ante metus venenatis quam, at suscipit urna nisl id augue. Quisque quis pharetra arcu. Quisque bibendum tortor vel viverra cursus. Cras commodo, purus at iaculis egestas, nisl ligula tempor quam, eu tincidunt ante tellus at nulla."),
              Text("Pellentesque id arcu risus. Maecenas at mi suscipit, maximus quam vel, ullamcorper libero. Cras sit amet neque eget erat molestie fringilla in id tortor. Duis vel ex elit. Phasellus volutpat justo eget mi vestibulum, quis iaculis nibh sollicitudin. Mauris at imperdiet felis. Nam ut augue posuere, bibendum dolor non, vulputate diam. Nam urna enim, eleifend sit amet scelerisque at, vehicula et arcu. Integer gravida, magna nec accumsan imperdiet, erat ex tempus odio, non elementum massa elit in turpis. Fusce dolor eros, consequat in felis a, euismod congue enim. Nulla nec urna ut turpis mollis mattis. Donec suscipit neque eu dolor tincidunt, in sollicitudin eros finibus. Aliquam aliquam eu elit sed aliquet. Nulla facilisi."),
              Text("Nulla consequat, neque vitae molestie aliquam, dolor lectus congue urna, a fringilla leo velit id dui. Maecenas et tellus viverra, porttitor ante eget, semper dolor. In hac habitasse platea dictumst. Vivamus ac tellus quis ligula ullamcorper consequat. Morbi pretium nisl sit amet lectus tempor iaculis. Phasellus sed mollis neque. Nulla eget turpis arcu. Etiam varius rutrum ultricies. Aliquam ullamcorper leo ac odio pellentesque, eu venenatis ex venenatis. Etiam quis ultricies est. Sed molestie eu eros sed sagittis."),
              Text("Cras sed leo venenatis est efficitur aliquam. Nunc vehicula turpis in est varius, ac lobortis erat tristique. Nunc ut orci turpis. Curabitur consequat ultricies nibh, sit amet hendrerit tortor volutpat vel. Suspendisse potenti. Fusce sollicitudin ex eu sapien scelerisque, id lacinia quam aliquam. Morbi sit amet lacinia tellus, et blandit nulla. Morbi at scelerisque enim. Duis semper, magna in pharetra euismod, velit neque pellentesque dolor, et lobortis lacus velit quis nulla. Nam leo augue, imperdiet quis neque at, maximus interdum eros. Curabitur fermentum arcu mauris. Pellentesque imperdiet mi sit amet libero congue mattis. Aliquam ut efficitur sapien, eget porttitor urna. Morbi mi leo, rutrum ac scelerisque quis, sodales eget orci. In quis auctor urna."),
              Text("Praesent fermentum consectetur augue, sed blandit nibh varius a. Phasellus ut augue volutpat risus imperdiet bibendum. Integer ullamcorper feugiat mi, at lacinia nisi volutpat at. Phasellus vitae dolor leo. Integer maximus accumsan ornare. Vestibulum sit amet scelerisque turpis. Integer at felis ut lorem dictum mollis eget quis ligula. Praesent euismod vehicula mollis."),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.04,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nova (C)"),
            ],
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}