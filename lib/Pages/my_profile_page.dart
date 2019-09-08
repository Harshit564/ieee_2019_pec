import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  Widget _buildProfileCard(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
              ),
            ),
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
        title: Text('My Profile'),
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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            alignment: Alignment.center,
            child: ListView(
//            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: CircleAvatar(
                      radius: 50.0,
                      child: Image.asset(
                        "assets/images/profileLogo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),

                _buildProfileCard("Student Name"),
                _buildProfileCard("College Name"),
                _buildProfileCard("Student SID"),
                _buildProfileCard("Proficiency"),

                SizedBox(
                  height: 25.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Text('Log Out'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
