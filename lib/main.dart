import 'package:flutter/material.dart';
import 'package:halloween/explore.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(
          seconds: 14,
          navigateAfterSeconds: Explore(),
          imageBackground: AssetImage('assets/images/halloween.jpg'),
          loadingText: Text(
            'Happy Halloween',
            style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'SyneMono'),
          ),
          photoSize: 100.0,
          loaderColor: Colors.white,
        ),
      ),
    );
  }
}
