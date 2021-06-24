import 'package:flutter/material.dart';
import 'file:///C:/ornekler/wecodenew/lib/pages/giris.dart';
import 'file:///C:/ornekler/wecodenew/lib/pages/kay%C4%B1t.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 105.0,
              ),
              Container(
                width: 220.0,
                height: 220.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/we3.png"))),
              ),
              SizedBox(
                height: 35.0,
              ),
              Material(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Giriş Yap",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            onPressed: () {
                              Route routeGirisPage =
                                  MaterialPageRoute(builder: (context) {
                                return GirisPage();
                              });
                              Navigator.push(context, routeGirisPage);
                            },
                          ),
                          width: double.infinity,
                          height: 82.0,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Kaydol",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            onPressed: () {
                              Route routeKayitPage =
                                  MaterialPageRoute(builder: (context) {
                                return KayitPage();
                              });
                              Navigator.push(context, routeKayitPage);
                            },
                          ),
                          width: double.infinity,
                          height: 62.0,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 6),
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.blue[200],
                          Colors.green[200],
                        ]),
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 120,
                  height: 200.0,
                ),
              ),
            ],
          ),
        ));
  }
}
