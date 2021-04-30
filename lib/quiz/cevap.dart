import 'package:flutter/material.dart';

class Cevap extends StatelessWidget {
  final Function selectHandler;
  final String cevaplar;

  Cevap(this.selectHandler, this.cevaplar);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.lightBlue[200],
          onPrimary: Colors.white,
        ),
        child: Text(cevaplar),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}
