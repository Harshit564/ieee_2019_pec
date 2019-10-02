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
    new Future.delayed(Duration(milliseconds: 2000)).then((val) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPageChoice()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  "assets/images/IEEE_logo_2.png",
                  height: 250.0,
                  width: 250.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Hero(
                      tag: 'logo1',
                      child: Image.asset(
                        "assets/images/IEEE_CS.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Hero(
                      tag: 'logo2',
                      child: Image.asset(
                        "assets/images/IEEE_PES.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Hero(
                      tag: 'logo3',
                      child: Image.asset(
                        "assets/images/IEEE_WIE.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
