import 'package:flutter/material.dart';

import './cevap.dart';
import './soru.dart';

class Sinav extends StatelessWidget {
  final List<Map<String, Object>> sorular;
  final int soruIndex;
  final Function cevaplanma;

  Sinav({
    @required this.sorular,
    @required this.cevaplanma,
    @required this.soruIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Soru(
          sorular[soruIndex]['soru'],
        ), //Question
        ...(sorular[soruIndex]['cevaplar'] as List<Map<String, Object>>) // ??
            .map((answer) {
          return Cevap(() => cevaplanma(answer['puan']), answer['text']);
        }).toList()
      ],
    ); //Column
  }
}
