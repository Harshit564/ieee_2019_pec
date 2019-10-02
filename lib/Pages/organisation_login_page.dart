import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';

class OrganisationLoginPage extends StatefulWidget {

  static const String routeName = "/organisation-login-page";
  @override
  _OrganisationLoginPageState createState() => _OrganisationLoginPageState();
}

class _OrganisationLoginPageState extends State<OrganisationLoginPage> {
  SharedPreferences sharedPreferences;
  String organisationName = "";
  String userName = "Organisation1";
  String email = "";
  String contact="";

  final TextEditingController _nameInputController = TextEditingController();
  final TextEditingController _emailInputController = TextEditingController();
  final TextEditingController _contactInputController = TextEditingController();
  final TextEditingController _organisationInputController = TextEditingController();
  final _organisationLoginFormKey = GlobalKey<FormState>();
  Future<void> _getInfo() async {
    sharedPreferences = await SharedPreferences.getInstance();

    organisationName = sharedPreferences.getString("OrganisationName") ?? "";
    email = sharedPreferences.getString("Email") ?? "";
    contact = sharedPreferences.getString("Contact") ?? "";
    userName = sharedPreferences.getString("UserName") ?? "";
  }

  Future<void> _setData() async {
    await sharedPreferences.setString("OrganisationName", _organisationInputController.text.toString().trim());
    await sharedPreferences.setString(
        "Email", _emailInputController.text.toString().trim());
    await sharedPreferences.setString("Contact", _contactInputController.text.toString().trim());
    await sharedPreferences.setString(
        "UserName", _nameInputController.text.toString().trim());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getInfo().then((val){
      print(organisationName);
      print(email);
      print(contact);
      print(userName);
      if (organisationName != "" && email != "" && contact != "" && userName != "") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organisation Login'),
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
            key: _organisationLoginFormKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your Organisation Name';
                      }
                      return null;
                    },
                    controller: _organisationInputController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.assignment_ind),
                      hintText: 'Organisation Name',
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
                        return 'Please enter your contact number';
                      }
                      return null;
                    },
                    controller: _contactInputController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Contact No.',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your Username';
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
                SizedBox(
                  height: 30.0,
                ),
                RaisedButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    if(_organisationLoginFormKey.currentState.validate()){
                      print('Validated');
                      Navigator.pushReplacementNamed(context, HomePage.routeName);
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
