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
    contact: "contact",
    email: "email",
    imagePath: "assets/images/my.jpeg",
    name: "Harshit Singh",
    position: "Frontend Developer",
    ),
    _buildContactGridTile(
    contact: "contact",
    email: "email",
    imagePath: "assets/images/dhruv.jpeg",
    name: "Dhruv Singla",
    position: "Frontend Developer",
    ),
    ],
    ),
      ),
    );
  }
}
