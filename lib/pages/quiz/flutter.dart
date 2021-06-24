import 'package:flutter/material.dart';
import './sınav.dart';
import './sonuç.dart';

class Flutter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterState();
  }
}

class _FlutterState extends State<Flutter> {
  final _sorular = const [
    {
      'soru':
          'Soru 1:  Aşağıdakilerden hangisi Dart dilinde tanımlı veri tiplerinden değildir ?',
      'cevaplar': [
        {'text': 'String', 'puan': -2},
        {'text': 'int', 'puan': -2},
        {'text': 'long', 'puan': 10},
        {'text': 'bool', 'puan': -2},
      ],
    },
    {
      'soru':
          'Soru 2: Aşağıdakilerden hangisi Flutter ile geliştirilen bir uygulama hata yakalama tekniğidir ? ',
      'cevaplar': [
        {'text': 'try{}finally{}', 'puan': -2},
        {'text': 'try{}catch(e)()', 'puan': -2},
        {'text': 'try{}finally()', 'puan': -2},
        {
          'text': 'try{}catch(e){}', //doğru cevap
          'puan': 10
        },
      ],
    },
    {
      'soru':
          ' Soru 3:  User isimli bir sınıfı Json formatına çevirmek isteyen bir Flutter geliştiricisi aşağıdaki dart convert fonkisyonlarından hangisini kullanır ? ',
      'cevaplar': [
        {'text': 'toJson();', 'puan': -2},
        {'text': 'decode();', 'puan': 10}, //doğru cevap
        {'text': 'encode();', 'puan': -2},
        {'text': 'serializetoJson();', 'puan': -2},
      ],
    },
    {
      'soru':
          'Soru 4: Aşağıdakilerinden hangisi Dart dilinde kullanılan bir döngü ifadesi değildir ?',
      'cevaplar': [
        {'text': 'loop', 'puan': 10},
        {'text': 'for', 'puan': -2},
        {'text': 'while', 'puan': -2},
        {'text': 'do-while', 'puan': -2},
      ],
    },
    {
      'soru': 'Soru 5: Web ve Masaüstü için flutter stable mıdır?',
      'cevaplar': [
        {
          'text': 'Evet',
          'puan': -2,
        },
        {'text': 'Hayır', 'puan': 10},
      ],
    },
  ];

  var _soruIndex = 0;
  var _toplamPuan = 0;

  void _cevaplanma(int score) {
    _toplamPuan += score;

    setState(() {
      _soruIndex = _soruIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[100],
          elevation: 0.0,
          //Appbar'ı ayıran Çizginin büyüklüğü

          title: Text(
            "Flutter İçin İlk Aşama",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _soruIndex < _sorular.length
              ? Sinav(
                  cevaplanma: _cevaplanma,
                  soruIndex: _soruIndex,
                  sorular: _sorular,
                ) //Quiz
              : Sonuc(_toplamPuan),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
