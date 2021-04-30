import 'package:flutter/material.dart';
import 'quiz/flutter.dart';

class Duyuru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        elevation: 0.0,
        //Appbar'ı ayıran Çizginin büyüklüğü

        title: Text(
          "We Code Ekibinden Duyurular",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.red[200],
                          Colors.blue[200],
                        ]),
                  ),
                  height: 90,
                  child: TextButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Flutter Ustası Olmak İsteyenler İçin Son Şans ! Kaçırmadan Başvur",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Route routeFlutter =
                          MaterialPageRoute(builder: (context) {
                        return Flutter();
                      });
                      Navigator.push(context, routeFlutter);
                    },
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.green[200],
                          Colors.blue[200],
                        ]),
                  ),
                  height: 90,
                  child: TextButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Backend Ustası Olmak İsteyenler İçin Son Şans ! Kaçırmadan Başvur",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    onPressed: () {
                      AlertDialog alert = AlertDialog(
                        title: Text("Üzgünüz :("),
                        content: Text(
                            "Backend Usta Başvurumuzun Süresi Maalesef Dolmuştur"),
                      );

                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
