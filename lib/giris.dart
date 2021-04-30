import 'package:flutter/material.dart';
import 'package:wecodenew/anasayfa.dart';

class GirisPage extends StatelessWidget {
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
                width: 180.0,
                height: 180.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/we3.png"))),
              ),
              SizedBox(
                height: 15.0,
              ),
              Material(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "GİRİŞ",
                        style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Mail Adresinizi Giriniz...',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Şifrenizi Giriniz...',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text('to home'),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue[100],
                                    onPrimary: Colors.black,
                                  )),
                              SizedBox(
                                width: 20.0,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Route routeAnaSayfa =
                                        MaterialPageRoute(builder: (context) {
                                      return AnaSayfa();
                                    });
                                    Navigator.push(context, routeAnaSayfa);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text('to network'),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.black,
                                  )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.blue[100],
                          Colors.lightBlueAccent,
                        ]),
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 80,
                  height: 300.0,
                ),
              ),
            ],
          ),
        ));
  }
}
