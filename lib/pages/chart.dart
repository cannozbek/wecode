import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ScatterChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScatterChartSample1State();
}

class _ScatterChartSample1State extends State {
  final maxX = 50.0;
  final maxY = 50.0;
  final radius = 8.0;

  Color blue1 = const Color(0xFF0D47A1);
  Color blue2 = const Color(0xFF42A5F5).withOpacity(0.8);

  bool showFlutter = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:
         Text(
          "     Koyu Renkli Olanlar Gözümüz Ustalarımız"
              "\n"
              "     Açık Renkli Olanlar  Geleceğimiz Çıraklarımız..."
              "\n"
              "\n"
              "\n",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.blueAccent,
          ),
        ),

      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        elevation: 0.0,
        //Appbar'ı ayıran Çizginin büyüklüğü

        title: Text(
          "WeCodeAnaliz",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            showFlutter = !showFlutter;
          });
        },
        child: AspectRatio(
          aspectRatio: 1,
          child: Card(
            color: const Color(0xffffffff),
            elevation: 6,
            child: ScatterChart(
              ScatterChartData(
                scatterSpots: showFlutter ? flutterLogoData() : randomData(),
                minX: 0,
                maxX: maxX,
                minY: 0,
                maxY: maxY,
                borderData: FlBorderData(
                  show: false,
                ),
                gridData: FlGridData(
                  show: false,
                ),
                titlesData: FlTitlesData(
                  show: false,
                ),
                scatterTouchData: ScatterTouchData(
                  enabled: false,
                ),
              ),
              swapAnimationDuration: const Duration(milliseconds: 600),
            ),
          ),
        ),
      ),
    );
  }

  List<ScatterSpot> flutterLogoData() {
    return [
      /// section 1
      ScatterSpot(18, 30, color: blue2, radius: radius),
      ScatterSpot(18, 28, color: blue2, radius: radius),
      ScatterSpot(18, 26, color: blue2, radius: radius),
      ScatterSpot(18, 24, color: blue2, radius: radius),

      ScatterSpot(19, 25, color: blue2, radius: radius),
      ScatterSpot(20, 26, color: blue2, radius: radius),
      ScatterSpot(21, 27, color: blue2, radius: radius),
      ScatterSpot(22, 26, color: blue2, radius: radius),
      ScatterSpot(23, 25, color: blue2, radius: radius),
      ScatterSpot(24, 24, color: blue2, radius: radius),
      ScatterSpot(24, 26, color: blue2, radius: radius),
      ScatterSpot(24, 28, color: blue2, radius: radius),
      ScatterSpot(24, 30, color: blue2, radius: radius),

      ScatterSpot(28, 24, color: blue2, radius: radius),
      ScatterSpot(28, 26, color: blue2, radius: radius),
      ScatterSpot(28, 28, color: blue2, radius: radius),
      ScatterSpot(28, 30, color: blue2, radius: radius),

      ScatterSpot(30, 30, color: blue2, radius: radius),
      ScatterSpot(32, 30, color: blue2, radius: radius),

      ScatterSpot(30, 27, color: blue2, radius: radius),
      ScatterSpot(32, 27, color: blue2, radius: radius),

      ScatterSpot(30, 24, color: blue2, radius: radius),
      ScatterSpot(32, 24, color: blue2, radius: radius),
    ];
  }

  List<ScatterSpot> randomData() {
    const blue1Count = 21;
    const blue2Count = 57;
    return List.generate(blue1Count + blue2Count, (i) {
      Color color;
      if (i < blue1Count) {
        color = blue1;
      } else {
        color = blue2;
      }

      return ScatterSpot(
        (Random().nextDouble() * (maxX - 8)) + 4,
        (Random().nextDouble() * (maxY - 8)) + 4,
        color: color,
        radius: (Random().nextDouble() * 16) + 4,
      );
    });
  }
}
