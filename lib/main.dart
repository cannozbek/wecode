import 'package:flutter/material.dart';
import 'package:wecodenew/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
          secondaryHeaderColor: Colors.blue[50],
        ),
        home: Hello());
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Route routeHomePage = MaterialPageRoute(builder: (context) {
            return HomePage();
          });

          Navigator.push(context, routeHomePage);
        },
        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              "to network ",
              style: TextStyle(fontSize: 12),
            ),
            Icon(
              Icons.network_wifi,
              size: 12,
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/we3.png",
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
