import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_page_choice.dart';

class MyOrganisationPage extends StatefulWidget {
  @override
  _MyOrganisationPageState createState() => _MyOrganisationPageState();
}

class _MyOrganisationPageState extends State<MyOrganisationPage> {
  String organisationName = "";
  String userName = "Organisation1";
  String email = "";
  String contact="";

  SharedPreferences preferences;

  Widget _buildProfileCard(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _getInfo() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      organisationName = preferences.getString("");
      userName = preferences.getString("");
      contact=preferences.getString("");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF01588D),
        elevation: 0.0,
        title: Text('Organisation Profile'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await preferences.clear().then((val) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPageChoice(),
                  ),
                );
              });
            },
            tooltip: "Log Out",
          ),
        ],
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
                _buildProfileCard(organisationName),
                _buildProfileCard(email),
                _buildProfileCard(userName),
                _buildProfileCard(contact),
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
                      onPressed: () async {
                        await preferences.clear().then((val) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPageChoice(),
                            ),
                          );
                        });
                      },
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
