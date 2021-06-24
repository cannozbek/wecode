import 'package:flutter/material.dart';

class Soru extends StatelessWidget {
  final String soru;

  Soru(this.soru);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        soru,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ), //Text
    ); //Contaier
  }
}
