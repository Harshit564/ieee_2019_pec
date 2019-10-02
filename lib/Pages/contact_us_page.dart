import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  Widget _buildContactListTile(
      {String imagePath,
      String name,
      String position,
      String email,
      String contact}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        color: Colors.white,
        elevation: 6.0,
        child: ListTile(
          title: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(position),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(contact),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(email),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF56079D),
        elevation: 0.0,
        title: Text("Contact Us"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/profileBackground.jpg",
            ),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/jatin.jpg",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/team/Harshima.jpg",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/team/Shreya.JPG",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/team/utkarsh.jpg",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/prab.jpg",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/team/Arnav Malhotra.jpeg",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/team/Chetna Gupta.JPG",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/team/Shagundeep Singh.jpg",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/team/Sameer.jpg",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/team/Sanyam Dhawan.jpg",
              name: "name",
              position: "position",
            ),
            _buildContactListTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/team/Mukul.jpeg",
              name: "name",
              position: "position",
            ),
          ],
        ),
      ),
    );
  }
}
