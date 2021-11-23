import 'package:flutter/material.dart';
import 'package:tugasuts/screen/loginscreen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5, //mengatur waktu 
        navigateAfterSeconds: LoginPage(),
      title: new Text('MONITORING ENERGY LISTRIK'),
      image: Image.asset('assets/images/logomonitorlistrik.png'),
      photoSize: 150.0,
    );
  }
}