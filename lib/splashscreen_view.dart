import 'package:flutter/material.dart';
import 'package:news_app_19710081/HomePage.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/asi.jpg",
              width: 400.0,
              height: 300.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Nama ^Asiyah^",
            style: TextStyle(
              color: Colors.indigo.shade900,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "NPM ^19710081^",
            style: TextStyle(
              color: Colors.indigo.shade900,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Kelas ^5A SI Regular Pagi BJM^",
            style: TextStyle(
              color: Colors.indigo.shade900,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "^Banjarmasin, 25 Juni 2001^",
            style: TextStyle(
              color: Colors.indigo.shade900,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "^Trans Kalimantan, Handil Bakti^",
            style: TextStyle(
              color: Colors.indigo.shade900,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
