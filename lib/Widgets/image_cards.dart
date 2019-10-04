import 'package:flutter/material.dart';

class ImageCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          height: 200.0,
          width: 200.0,
          child: Image.asset('assets/images/code.jpg',
          fit: BoxFit.fill,),
        ),
      ),
    );
  }
}