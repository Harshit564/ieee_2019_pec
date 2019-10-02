import 'package:flutter/material.dart';
import 'package:ieee_student/Pages/splash_screen_2.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(milliseconds: 2000)).then((val) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashScreen2()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Hero(
          tag: 'logo',
          child: CircleAvatar(
            radius: 100.0,
            backgroundColor: Colors.white,
            child: Image.asset('assets/images/IEEE-Region-pngFI.png'),
          ),
        ),
      ),
    );
  }
}
