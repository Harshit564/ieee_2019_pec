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
      body: Center(
        child: Hero(
          tag: 'logo',
          child: CircleAvatar(
            radius: 50.0,
            child: Text('Logo1'),
          ),
        ),
      ),
    );
  }
}