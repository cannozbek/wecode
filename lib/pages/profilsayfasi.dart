import 'package:flutter/material.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResimlinki;
  final String profilResimlinki;

  const ProfilSayfasi(
      {Key key,
      this.isimSoyad,
      this.kullaniciAdi,
      this.kapakResimlinki,
      this.profilResimlinki})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 230.0,
                //color: Colors.yellow,
              ),
              Container(
                height: 180.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(profilResimlinki), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                  left: 20.0,
                  bottom: 5.0,
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(68.0),
                      border: Border.all(width: 2.0, color: Colors.white),
                      image: DecorationImage(
                          image: NetworkImage(kapakResimlinki),
                          fit: BoxFit.cover),
                    ),
                  )),
              Positioned(
                  top: 190.0,
                  right: 155.0,
                  child: Column(
                    children: [
                      Text(
                        kullaniciAdi,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        isimSoyad,
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  )),
              Positioned(
                  top: 130.0,
                  right: 15.0,
                  child: Container(
                    width: 200.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[200],
                        border: Border.all(width: 2.0, color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.ac_unit_sharp,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          "Ustalık Talebi Yolla",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )),
              IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 75.0,
            color: Colors.blueGrey.withOpacity(0.2), //opacity şefafflık katıyor
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                sayac("Proje Desteği", "200"),
                sayac("Takip", "1230"),
                sayac("Makale", "28"),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 655.0,
            color: Colors.blue.withOpacity(0.2), //opacity şefafflık katıyor
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30.0,
                  color: Colors.blueGrey
                      .withOpacity(0.2), //opacity şefafflık katıyor
                ),
                Text(
                  "Makalaler",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Open Sans',
                      fontSize: 20),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "C#'a Giriş",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Open Sans',
                        fontSize: 15),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "C#'dan Çıkış",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Open Sans',
                        fontSize: 15),
                  ),
                ),
                Container(
                  height: 30.0,
                  color: Colors.blueGrey
                      .withOpacity(0.2), //opacity şefafflık katıyor
                ),
                Text(
                  "Github Projeleri",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Open Sans',
                      fontSize: 20),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "iyzico'da backend modül v0.1",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Open Sans',
                        fontSize: 15),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "ödeme sistemleri entegrasyon sistemi",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Open Sans',
                        fontSize: 15),
                  ),
                ),
                Container(
                  height: 30.0,
                  color: Colors.blueGrey
                      .withOpacity(0.2), //opacity şefafflık katıyor
                ),
                Text(
                  "Destek Verdiği Projeler",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Open Sans',
                      fontSize: 20),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "BiBitCoin Ödeme Sistemleri",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Open Sans',
                        fontSize: 15),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "PayVer PayAl Ödeme Sistemleri",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Open Sans',
                        fontSize: 15),
                  ),
                ),
                Container(
                  height: 30.0,
                  color: Colors.blueGrey
                      .withOpacity(0.2), //opacity şefafflık katıyor
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column sayac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sayi,
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          height: 1.0,
        ),
        Text(baslik,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ))
      ],
    );
  }
}
