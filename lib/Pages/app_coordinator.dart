import 'package:flutter/material.dart';

class AppCoordinator extends StatelessWidget {
  static const String routeName = "/appCoordinator-page";

  Widget _buildContactGridTile({
    String imagePath,
    String name,
    String position,
    String email,
    String contact,
  }) {
    return GridTile(
      child: Column(
        children: <Widget>[
      ClipOval(
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        height: 150.0,
        width: 150.0,
      ),
    ),
    Padding(
    padding: const EdgeInsets.only(
    bottom: 80.0,
    ),
    child: Column(
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
    name,
    style: TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
    position,
    style: TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.white,
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(2.0),
    child: Text(
    contact,
    style: TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.white,
    ),
    ),
    ),
    ],
    ),
    ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF01588D),
        elevation: 8.0,
        title: Text("App Coordinator"),
        centerTitle: true,
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
    child: ListView(
    padding: EdgeInsets.all(8.0),
    children: <Widget>[
    _buildContactGridTile(
    contact: "7007108095",
    email: "harshitsingh15967@gmail.com",
    imagePath: "assets/images/team/Harshit.jpg",
    name: "Harshit Singh",
    position: "Frontend and Backend Developer",
    ),
    _buildContactGridTile(
    contact: "8307134416",
    email: "dhruvsingla072gmail.com",
    imagePath: "assets/images/dhruv.jpeg",
    name: "Dhruv Singla",
    position: "Frontend and Backend Developer",
    ),
      _buildContactGridTile(
        contact: "9463809630",
        email: "jasjot784@gmail.com",
        imagePath: "assets/images/jasjot.jpeg",
        name: "Jasjot Singh",
        position: "Frontend Developer",
      ),
    ],
    ),
      ),
    );
  }
}
