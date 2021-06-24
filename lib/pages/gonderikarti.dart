import 'package:flutter/material.dart';
import 'profilsayfasi.dart';

class GonderiKarti extends StatelessWidget {
  final String profilResimLinki;
  final String isimSoyad;
  final String gecenSure;
  final String gonderiResimLinki;
  final String aciklama;

  const GonderiKarti(
      {this.profilResimLinki,
      this.isimSoyad,
      this.gecenSure,
      this.gonderiResimLinki,
      this.aciklama});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Material(
          elevation: 1.0,
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            padding: EdgeInsets.all(15.0),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(12.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //elemanlar arası eşit boşluk bırakıyor
                  children: <Widget>[
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ProfilSayfasi(
                                      profilResimlinki: profilResimLinki,
                                      isimSoyad: isimSoyad,
                                      kapakResimlinki: profilResimLinki,
                                      kullaniciAdi: isimSoyad,
                                    )));
                          },
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.blue,
                                image: DecorationImage(
                                    image: NetworkImage(profilResimLinki),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              isimSoyad,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              gecenSure,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  aciklama,
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Image.network(
                  gonderiResimLinki,
                  width: double.infinity,
                  height: 300.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IkonluButonum(
                      ikonum: Icons.favorite,
                      yazi: "Daha Sonrasi İçin Kaydet",
                      fonksiyonum: () {
                        print("Beğen");
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class IkonluButonum extends StatelessWidget {
  final IconData ikonum;
  final String yazi;

  final fonksiyonum;

  IkonluButonum({this.ikonum, this.yazi, this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.lightBlue[100],
        child: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    ikonum,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(yazi,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ))
                ],
              ),
            )));
  }
}
