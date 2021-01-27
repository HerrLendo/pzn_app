import 'package:flutter/material.dart';
import 'package:pzn_app/main.dart';
import 'package:splashscreen/splashscreen.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        seconds: 5,
        navigateAfterSeconds: MyApp(),
        backgroundColor: Colors.white,
        image: Image.asset('assets/PZN_Logo.png'),
        photoSize: 150,
        loaderColor: Colors.yellow[700],
        loadingText: Text('V.202101.27.1854'),
      ),
    );
  }
}
