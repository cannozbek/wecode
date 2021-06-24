import 'package:flutter/material.dart';

class Hakkimizda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        elevation: 0.0,
        //Appbar'ı ayıran Çizginin büyüklüğü

        title: Text(
          "Hakkımızda",
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
                  child: Column(
                    children: [
                      Text(
                        "We Code Nedir ? ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 25),
                      ),
                      Text(
                        "\n"
                            "WeCode, yazılım geliştirme ile uğraşan ve bu sektörde gelişmek isteyen gençlerin usta yazılımcılar ile buluşmasını sağlayan bir platformdur. "
                            "Aynı zamanda piyasada uzun süre çalışmış ve içerik tüketmiş,üretmiş bu kişilerin kaynaklarına , github,medium vb. içerik paylaştıkları ortamlara tek bir noktadan erişim "
                            "sağlamanızı amaçlar.\n"
                            "Bunlar dışında usta yazılımcılara talep yollayarak onlar ile proje tabanlı olarak görüşebilir ve yürüttüğünüz proje hakkında destek alabilirsiniz.\n"
                            "\n",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 15),
                      ),
                      Text(
                        "Hikayemiz ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 25),
                      ),
                      Text(
                        "\n"
                            "Yazılım dünyası dışına çıktığımızda farklı iş kollarında cidden sadece üniversite eğitimiyle bir iş veya beceri sahibi olmamız imkansızdır. Daima pratik yapmalı ve\n"
                            "kendimizi geliştirmeli hayatın içinde olmalıyız. Yazılım sektörüne geldiğimizde ise her kişinin ve gelişiminin bireysele indirgenmesi ile yazılımcıların yalnızlaşması istemediğimiz \n"
                            "bir durum oldu. Öğrenci olarak şiddetli bir şekilde bu sektörün içinde hissettiğimiz yalnızlığın devamında da sürmemesi için çalışmaya karar verdik. Bunun dışında amaçlarımızdan birisi\n"
                            "yazılım sektöründe başarılı isimlerin bilgilerini aktarmak istemeleri , bunun için ulaştığı yöntemlerinin kalabalık ve özel olmaması sonucuyla pek bir sonuca ulaşamaması. Bu yüzden bireysel\n"
                            "olarak katılabilecekleri ve bireysel ilişkilerin kurulabileceği bir topluluk projesine imza atmak. "
                            "\n",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Tüm Hakları Saklıdır "
                            "\n"
                            "Versiyon 1"
                            "\n"
                            "\n"

                            "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193311048 numaralı Remzi Can Özbek "
                            "tarafından 30 Nisan 2021 günü yapılmıştır."
                            "\n"
                            "\n"
                            "\n"

                            "Versiyon 2"
                            "\n"
                            "\n"
                            "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 203301111 numaralı Öğrenci Öğrenir tarafından 25 Haziran 2021 günü yapılmıştır.",

                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open Sans',
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 80.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
