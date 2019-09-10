import 'package:flutter/material.dart';


class OurFamily extends StatelessWidget {

  static const String routeName = "/news-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Family'),
        centerTitle: true,
        backgroundColor: Color(0xFF01588D),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/contactBackground.jpg",
            ),
          ),
        ),
        child: Center(
          child: Image.asset("assets/images/ieee_mashup.jpeg",
          fit:BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

