import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wecodenew/gonderikarti.dart';
import 'package:wecodenew/hakk%C4%B1m%C4%B1zda.dart';
import 'package:wecodenew/usta.dart';

import 'ayarlar.dart';
import 'duyurular.dart';

class AnaSayfa extends StatefulWidget {
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        elevation: 0.0,
        //Appbar'ı ayıran Çizginin büyüklüğü

        title: Text(
          "wecode",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        ),
        centerTitle: true,
        //title ortalama
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.wifi,
              color: Colors.white,
              size: 20.0,
            ),
            onPressed: () {
              Route routeDuyuru = MaterialPageRoute(builder: (context) {
                return Duyuru();
              });
              Navigator.push(context, routeDuyuru);
            },
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent[100],
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.lightBlue[100],
                      radius: 50.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Ali Osman',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .3),
                    child: Text(
                      'Backend Developer',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .8),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Usta Yazılımcı',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text('Usta Yazılımcı Ol'),
              onTap: () {
                Route routeUstaOl = MaterialPageRoute(builder: (context) {
                  return UstaOl();
                });
                Navigator.push(context, routeUstaOl);
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Hakkımızda'),
              onTap: () {
                Route routeHakkimizda = MaterialPageRoute(builder: (context) {
                  return Hakkimizda();
                });
                Navigator.push(context, routeHakkimizda);
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind_rounded),
              title: Text('Ayarlar'),
              onTap: () {
                Route routeAyarlar = MaterialPageRoute(builder: (context) {
                  return Ayarlar();
                });
                Navigator.push(context, routeAyarlar);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView(
          children: <Widget>[
            GonderiKarti(
              profilResimLinki:
                  "https://miro.medium.com/max/11520/0*Jy3heMl_yP_fQwMO",
              isimSoyad: "We Code",
              gecenSure: "24 SAAT ÖNCE",
              gonderiResimLinki:
                  "https://miro.medium.com/max/11520/0*Jy3heMl_yP_fQwMO",
              aciklama: "WeCode Nedir ?\n"
                  "\n"
                  "WeCode, yazılım geliştirme ile uğraşan ve bu sektörde gelişmek isteyen gençlerin usta yazılımcılar ile buluşmasını sağlayan bir platformdur. "
                  "Aynı zamanda piyasada uzun süre çalışmış ve içerik tüketmiş,üretmiş bu kişilerin kaynaklarına , github,medium vb. içerik paylaştıkları ortamlara tek bir noktadan erişim "
                  "sağlamanızı amaçlar.\n"
                  "\n"
                  "Bunlar dışında usta yazılımcılara talep yollayarak onlar ile proje tabanlı olarak görüşebilir ve yürüttüğünüz proje hakkında destek alabilirsiniz.\n",
            ),
            GonderiKarti(
              profilResimLinki:
                  "https://miro.medium.com/max/11520/0*Jy3heMl_yP_fQwMO",
              isimSoyad: "We Code",
              gecenSure: "1 Gün önce",
              gonderiResimLinki:
                  "https://miro.medium.com/max/11520/0*Jy3heMl_yP_fQwMO",
              aciklama: "WeCode Developer Ailesine Katılmak İster Misin  ?\n"
                  "\n"
                  "Yukarıda bahsettiğimiz ve şuanda duyurmadığımız amaçlarımıza yönelik yazılım ve ürün geliştirecek arkadaşlar arıyoruz dersek bize katılmak ister misin ?"
                  "\n"
                  "\n"
                  "Benim ustam bu kişidir dediğin ismi bizimle paylaşmak ister misin ? "
                  "\n"
                  "\n"
                  "Şimdi bu soruları boşver ve biraz aşağıda ki bir kaç gönderiye göz gezdir...",
            ),
            GonderiKarti(
              profilResimLinki:
                  "https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg",
              isimSoyad: "Ahmet YILMAZ",
              gecenSure: "1 Saat Önce",
              gonderiResimLinki:
                  "https://miro.medium.com/max/605/0*TivrYUJ7f-RywS7C.png",
              aciklama: "DevOps Nedir ?\n"
                  "DevOps, yazılım geliştirme ile BT işlemlerini birleştiren bir dizi uygulamadır. Sistem geliştirme yaşam döngüsünü "
                  "kısaltmayı ve yüksek yazılım kalitesi ile sürekli teslimat sağlamayı amaçlamaktadır. DevOps, Çevik yazılım geliştirmeyi "
                  "tamamlayıcı niteliktedir; Çevik metodolojiden birkaç DevOps özelliği geldi.",
            ),
            GonderiKarti(
              profilResimLinki:
                  "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSVvdf3mtAr8BQaBqwu2wAFbJD1dH6jtmyAK7hZRRnbFc0yc_pT",
              isimSoyad: "Hayati Şentürk",
              gecenSure: "1 Saat Önce",
              gonderiResimLinki:
                  "https://miro.medium.com/max/11520/0*Jy3heMl_yP_fQwMO",
              aciklama: "What Unity Is ?\n"
                  "Unity is a 2D/3D engine and framework that gives you a system for designing game or app scenes for 2D, 2.5D and 3D. I say games "
                  "and apps because I’ve seen not just games, but training simulators, first-responder applications, and other business-focused "
                  "applications developed with Unity that need to interact with 2D/3D space. Unity allows you to interact with them via not only code, "
                  "but also visual components, and export them to every major mobile platform and a whole lot more—for free. (There’s also a pro"
                  "version that’s very nice, but it isn’t free. You can do an impressive amount with the free version.) Unity supports all major 3D"
                  "applications and many audio formats, and even understands the Photoshop .psd format so you can just drop a .psd file into a Unity",
            ),
          ],
        ),
      ),
    );
  }
}
