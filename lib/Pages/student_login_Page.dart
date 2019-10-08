import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudentLoginPage extends StatefulWidget {
  static const String routeName = "/student-login-page";

  @override
  _StudentLoginPageState createState() => _StudentLoginPageState();
}

class _StudentLoginPageState extends State<StudentLoginPage> {
  SharedPreferences sharedPreferences;
  String studentName = "";
  String studentMailID = "";
  String studentSID = "";
  String studentContact = "";

  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseUser currentUser;

  bool isLoading = false;
  bool isLoggedIn = false;

  final TextEditingController _nameInputController = TextEditingController();
  final TextEditingController _emailInputController = TextEditingController();
  final TextEditingController _contactInputController = TextEditingController();
  final TextEditingController _SIDInputController = TextEditingController();

  final _studentLoginFormKey = GlobalKey<FormState>();

  Future<void> _getInfo() async {
    sharedPreferences = await SharedPreferences.getInstance();

    studentName = sharedPreferences.getString("studentName") ?? "";
    studentMailID = sharedPreferences.getString("studentMailID") ?? "";
    studentSID = sharedPreferences.getString("studentSID") ?? "";
    studentContact = sharedPreferences.getString("studentContact") ?? "";
  }

  Future<void> _setData() async {
    await sharedPreferences.setString(
        "studentName", _nameInputController.text.toString().trim());
    await sharedPreferences.setString(
        "studentMailID", _emailInputController.text.toString().trim());
    await sharedPreferences.setString(
        "studentSID", _SIDInputController.text.toString().trim());
    await sharedPreferences.setString(
        "studentContact", _contactInputController.text.toString().trim());
  }

  Future<void> isSignedIn() async {
    this.setState(() {
      isLoading = true;
    });

    sharedPreferences = await SharedPreferences.getInstance();

    isLoggedIn = await googleSignIn.isSignedIn();
    if (isLoggedIn) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }

    this.setState(() {
      isLoading = false;
    });
  }

  Future<Null> handleSignIn() async {
    sharedPreferences = await SharedPreferences.getInstance();

    this.setState(() {
      isLoading = true;
    });

    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    AuthResult _result = await firebaseAuth.signInWithCredential(credential);
    FirebaseUser firebaseUser = _result.user;

    if (firebaseUser != null) {
      // Check is already sign up
      final QuerySnapshot result = await Firestore.instance
          .collection('users')
          .where('id', isEqualTo: firebaseUser.uid)
          .getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      if (documents.length == 0) {
        // Update data to server if new user
        Firestore.instance
            .collection('users')
            .document(firebaseUser.uid)
            .setData({
          'studentName': _nameInputController.text.toString().trim(),
          'studentID': _SIDInputController.text.toString().trim(),
          'firebaseID': firebaseUser.uid,
          'emailID': _emailInputController.text.toString().trim(),
          'contact': _contactInputController.text.toString().trim(),
        });

        // Write data to local
        currentUser = firebaseUser;
        await sharedPreferences.setString('studentName', _nameInputController.text.toString().trim());
        await sharedPreferences.setString('studentID', _SIDInputController.text.toString().trim());
        await sharedPreferences.setString('firebaseID', currentUser.uid);
        await sharedPreferences.setString('emailID', _emailInputController.text.toString().trim());
        await sharedPreferences.setString('contact', _contactInputController.text.toString().trim());
      } else {
        // Write data to local
        await sharedPreferences.setString('studentName', documents[0]['studentName']);
        await sharedPreferences.setString('studentID', documents[0]['studentID']);
        await sharedPreferences.setString('firebaseID', documents[0]['firebaseID']);
        await sharedPreferences.setString('emailID', documents[0]['emailID']);
        await sharedPreferences.setString('contact', documents[0]['contact']);
      }

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomePage()));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSignedIn().then((val){
      _getInfo().then((val) {
        print(studentName);
        print(studentSID);
        print(studentContact);
        print(studentMailID);
        if (studentName != "" &&
            studentMailID != "" &&
            studentSID != "" &&
            studentContact != "") {
          Navigator.pushReplacementNamed(context, HomePage.routeName);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Login'),
        centerTitle: true,
        backgroundColor: Color(0xFF01588D),
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
                    if (_studentLoginFormKey.currentState.validate()) {
                      _setData().then((val) {
                        Navigator.pushReplacementNamed(
                            context, HomePage.routeName);
                      });
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
