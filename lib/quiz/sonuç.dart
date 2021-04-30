import 'package:flutter/material.dart';

class Sonuc extends StatelessWidget {
  final int toplamPuan;

  Sonuc(this.toplamPuan);

//Remark Logic
  String get yaz {
    String resultText;
    if (toplamPuan >= 41) {
      resultText = 'Başvurunuz Alınmıştır...';
      print(toplamPuan);
    } else if (toplamPuan >= 31) {
      resultText = 'Başvurunuz Alınmıştır...';
      print(toplamPuan);
    } else if (toplamPuan >= 21) {
      resultText = 'İlk Adım İçin Maalesef Başvurunuz Onaylanmamıştır...';
    } else if (toplamPuan >= 1) {
      resultText = 'İlk Adım İçin Maalesef Başvurunuz Onaylanmamıştır...';
    } else {
      resultText = 'İlk Adım İçin Maalesef Başvurunuz Onaylanmamıştır...';
      print(toplamPuan);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            yaz,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          //Text
          //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
