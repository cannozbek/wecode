import 'package:flutter/material.dart';
import 'package:wecodenew/services//file_download_view.dart';

class ustalikSartlari extends StatefulWidget {


  @override
  _ustalikSartlariState createState() => _ustalikSartlariState();
}

class _ustalikSartlariState extends State<ustalikSartlari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        elevation: 0.0,
        //Appbar'ı ayıran Çizginin büyüklüğü

        title: Text(
          "Son Yapılan Usta Çırak İşlemleri",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FileDownloadView()));
                },
                child: Text("İndirmek İçin Tıklayınız...")),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}