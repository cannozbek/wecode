import 'package:flutter/material.dart';
import 'package:wecodenew/model/api_model.dart';
import 'package:wecodenew/services/api_services.dart';
import 'dart:math';

class AlbumsView extends StatefulWidget {
  @override
  _AlbumsViewState createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {
   Future<List<Albums>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

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
        child: FutureBuilder<List<Albums>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Albums> data = snapshot.data;
              return ListView.separated(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  Random random = new Random();
                  int colorCode = random.nextInt(10);
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCode * 100],
                    child: Row(
                      children: [
                        Text("İşlem Kodu: " + data[index].userId.toString()),
                        Text("" + data[index].id.toString()),
                        Text(" Tanım: " + data[index].title),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}