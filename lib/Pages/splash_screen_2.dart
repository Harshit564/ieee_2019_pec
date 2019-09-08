import 'package:flutter/material.dart';
import 'login_page_choice.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(milliseconds: 2000)).then((val){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPageChoice()));
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
            child: Text('Logo2'),
          ),
        ),
      ),
    );
  }
}
