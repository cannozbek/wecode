import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Advice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AdviceState();
  }
}

class AdviceState extends State {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  var gelenYaziBasligi = "";
  var gelenYaziIcerigi = "";




  yaziEkle() {
    FirebaseFirestore.instance
        .collection("advice")
        .doc("-"+t1.text)
        .set({'advicename': t1.text, 'advicedesc': t2.text});
  }

  YaziGetir(){
    FirebaseFirestore.instance.collection("advice").doc("-"+t1.text).get().then((gelenVeri){
      setState(() {
        gelenYaziBasligi = gelenVeri.data()['advicename'];
        gelenYaziIcerigi = gelenVeri.data()['advicedesc'];

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.caption;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[100],
          elevation: 0.0,
          title: Text(
            "WeCode Advice",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                TextField(
                  controller: t1,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: t2,
                ),
                Center(
                  child:
                  Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("Tavsiye Ver"),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue[300],
                            onPrimary: Colors.white,
                          ),
                          onPressed: yaziEkle
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("Tavsiye Sorgula"),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue[300],
                            onPrimary: Colors.white,
                          ),
                          onPressed: YaziGetir
                      ),
                    ],

                  ),
                ),

                ListTile(title: Text(gelenYaziBasligi),
                subtitle: Text(gelenYaziIcerigi),),
              ],
            ),
          ),
        ));
  }
}
