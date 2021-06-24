import 'package:flutter/material.dart';

class Ayarlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        elevation: 0.0,
        //Appbar'ı ayıran Çizginin büyüklüğü

        title: Text(
          "Ayarlar",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                child: TextButton(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Uygulama Ayarları",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                child: TextButton(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Hesap Ayarları",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                child: TextButton(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Çıraklık Ayarları",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                child: TextButton(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Gizlilik Sözleşmesi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
