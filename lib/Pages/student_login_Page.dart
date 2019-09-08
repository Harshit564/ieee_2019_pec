import 'package:flutter/material.dart';

import 'home_page.dart';

class StudentLoginPage extends StatefulWidget {
  static const String routeName = "/student-login-page";

  @override
  _StudentLoginPageState createState() => _StudentLoginPageState();
}

class _StudentLoginPageState extends State<StudentLoginPage> {

  final TextEditingController _nameInputController = TextEditingController();
  final TextEditingController _emailInputController = TextEditingController();
  final TextEditingController _contactInputController = TextEditingController();
  final TextEditingController _SIDInputController = TextEditingController();

  final _studentLoginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Login'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  "assets/images/IEEE_logo_2.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Form(
            key: _studentLoginFormKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    controller: _nameInputController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your email ID';
                      }
                      return null;
                    },
                    controller: _emailInputController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email ID',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your SID';
                      }
                      return null;
                    },
                    controller: _SIDInputController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.contacts),
                      hintText: 'SID',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your contact number';
                      }
                      return null;
                    },
                    controller: _contactInputController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Phone No.',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                RaisedButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    if(_studentLoginFormKey.currentState.validate()){
                      print('Validated');
                      Navigator.pushNamed(context, HomePage.routeName);
                    }
                  },

                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
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
}
