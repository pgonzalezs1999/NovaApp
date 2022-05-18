import 'package:flutter/material.dart';

class FlechaVolver extends StatelessWidget {
  FlechaVolver();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20, right: 20, left: 10),
      child: GestureDetector(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Icon(Icons.arrow_back_outlined, size: 30),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}