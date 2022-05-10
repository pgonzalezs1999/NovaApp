import 'package:flutter/material.dart';

class TarjetaTransferencia extends StatelessWidget {
  Widget nuevaPantalla;
  String nuevoDestino;
  String nuevoDia;
  String nuevaHora;
  String nuevoPrecio;
  Image nuevaFoto;
  TarjetaTransferencia(this.nuevaPantalla, this.nuevoDestino, this.nuevoDia, this.nuevaHora, this.nuevoPrecio, this.nuevaFoto);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.007,
            bottom: MediaQuery.of(context).size.height * 0.007),
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.012,
            bottom: MediaQuery.of(context).size.height * 0.012,
            right: MediaQuery.of(context).size.width * 0.035,
            left: MediaQuery.of(context).size.width * 0.035
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.deepPurple,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: nuevaFoto,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(nuevoDestino, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(nuevoDia, style: TextStyle(fontSize: 12)),
                          Text(nuevaHora + " h", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    Text(nuevoPrecio, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nuevaPantalla),
        );
      },
    );
  }
}