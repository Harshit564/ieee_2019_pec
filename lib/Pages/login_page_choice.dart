import 'package:flutter/material.dart';
import 'organisation_login_page.dart';
import 'student_login_Page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageChoice extends StatefulWidget {
  static const String routeName = "/login-page-choice";

  @override
  _LoginPageChoiceState createState() => _LoginPageChoiceState();
}

class _LoginPageChoiceState extends State<LoginPageChoice> {
  SharedPreferences sharedPreferences;
  String choice = "";

  Future<void> _getInfo() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    super.initState();
    _getInfo().then((val) {
      choice = sharedPreferences.getString("choice");
      if (choice != "") {
        switch (choice) {
          case "student":
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StudentLoginPage(),
              ),
            );
            break;
          case "organisation":
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrganisationLoginPage(),
              ),
            );
        }
      }
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
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                height: 200.0,
                width: 200.0,
                child: Hero(
                  tag: 'logo',
                  child: Image.asset(
                    "assets/images/IEEE_logo_2.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                elevation: 6.0,
                color: Color(0xFF01588D),
                textColor: Colors.white,
                onPressed: () async {
                  await sharedPreferences.setString("choice", "student");
                  Navigator.pushNamed(context, StudentLoginPage.routeName);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Login as a Student',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Color(0xFF01588D),
                textColor: Colors.white,
                elevation: 6.0,
                onPressed: () async {
                  await sharedPreferences.setString("choice", "organisation");

                  Navigator.pushNamed(context, OrganisationLoginPage.routeName);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Login as an Organisation',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
