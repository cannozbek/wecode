import 'package:flutter/material.dart';
import 'package:wecodenew/pages/duyurular.dart';

class UstaOl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        elevation: 0.0,
        //Appbar'ı ayıran Çizginin büyüklüğü

        title: Text(
          "Usta Yazılımcı Ol",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.blue.withOpacity(0.2), //opacity şefafflık katıyor
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Usta Yazılımcı Olmak Nedir ? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                ),
                Text(
                  "Usta yazılımcı olmak , çaylak yazılımcılara destek vermek demektir. Düzenli olarak paylaşımda kalabilmektir. Yazılım üretmek dışında daime paylaşmaya , "
                  "bilgelerini aktarmaya ilgili olmak demektir. WeCode ekibi olarak siz usta yazılımcılarımızı çaylak yazılımcılar ile buluşturarak proje tabanlı gelişime odaklanmanızı amaçlıyoruz."
                  "Ayrıca çaylakların da ustalığa geçerken kariyerinde hatrı sayılır iz bırakmanızı istiyoruz. Kendi çabalarıyla bir şeyler yapmak için çalışan 2 gencin elinden tutarak , usta olarak"
                  "sen de yarınlarımızı kodlayacak yazılımcılar yetişmesine katkı sağlayabilirsin. ",
                  textAlign: TextAlign.center,
                  // Metnin yatayda nasıl hizalanması gerektiğini belirtir. Örnekte yatayda mmerkezde hizalanır.
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                  child: Container(
                    height: 30.0,
                    color: Colors.blueGrey
                        .withOpacity(0.2), //opacity şefafflık katıyor
                  ),
                ),
                Text(
                  "Üretken\n"
                  "\n"
                  "Başarılı\n"
                  "\n"
                  "Paylaşımcı\n"
                  "\n"
                  "Lider\n"
                  "\n"
                  "Yazılımcılardan Biriysen\n"
                  "\n"
                  "Duyurular kısmını takip et ve açılan usta ilanlarına 5 soruluk test ile kolayca başvur...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Route routeDuyuru =
                            MaterialPageRoute(builder: (context) {
                          return Duyuru();
                        });
                        Navigator.push(context, routeDuyuru);

                        AlertDialog alert = AlertDialog(
                          title: Text("İpucu :)"),
                          content: Text(
                              "Ana Sayfa'da sağ üstte bulunan ikona tıklayarak da ulaşabilirsiniz..."),
                        );

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alert;
                          },
                        );

                        // show the dialog
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Duyurulara Git'),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        onPrimary: Colors.black,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
