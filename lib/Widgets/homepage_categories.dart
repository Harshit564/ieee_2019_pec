import 'package:flutter/material.dart';

class HomePageCategories extends StatelessWidget {

  final Function function;
  final String title;
  final IconData icon;
  final Color color;

  HomePageCategories({this.title, this.icon, this.color, this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      //padding: EdgeInsets.all(0.0),
      child: ListTile(
        onTap: function,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        leading: Icon(
          icon,
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.black54,
        ),
        color: Colors.white,
      ),
    );
  }
}
