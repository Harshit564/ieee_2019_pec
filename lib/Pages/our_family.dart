import 'package:flutter/material.dart';


class OurFamily extends StatelessWidget {

  static const String routeName = "/news-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Family'),
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset("assets/images/ieee_mashup.jpeg",
        fit:BoxFit.contain,
        ),
      ),
    );
  }
}

