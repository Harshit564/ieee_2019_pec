import 'package:flutter/material.dart';
import 'organisation_login_page.dart';
import 'student_login_Page.dart';

class LoginPageChoice extends StatelessWidget {

  static const String routeName = "/login-page-choice";
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
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: (){
                  Navigator.pushNamed(context, StudentLoginPage.routeName);
                },
                child: Text('Login as a Student'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 6.0,
                onPressed: (){
                  Navigator.pushNamed(context, OrganisationLoginPage.routeName);
                },
                child: Text('Login as an Organisation'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
