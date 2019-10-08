import 'package:flutter/material.dart';
import 'package:ieee_student/Pages/app_coordinator.dart';
import 'package:ieee_student/Pages/past_events_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ieee_student/Pages/my_profile_page.dart';
import 'package:ieee_student/Pages/contact_page.dart';

class HomePageDrawer extends StatefulWidget {
  @override
  _HomePageDrawerState createState() => _HomePageDrawerState();
}

class _HomePageDrawerState extends State<HomePageDrawer> {
  String launchUrl = "";
  SharedPreferences sharedPreferences;
  String studentName = "";
  String studentEmailID = "";

  Future<void> _getInfo() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      studentName = sharedPreferences.getString("studentName")?? "name";
      studentEmailID = sharedPreferences.getString("studentMailID")?? "email";
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getInfo();
  }

  Widget _buildDrawerListTile(
      {String title, IconData icon, Function function}) {
    return Expanded(
      child: ListTile(
        onTap: function,
        title: Text(title),
        leading: Icon(icon),
      ),
    );
  }

  Future<dynamic> _launchUrl(String url) async {
    setState(() {
      launchUrl = url;
    });
    if (await canLaunch(launchUrl)) {
      await launch(launchUrl);
    } else {
      throw 'Could not launch $launchUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF01588D),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 30.0,
              ),
            ),
            accountEmail: Text(studentEmailID),
            accountName: Text(studentName),
          ),
          _buildDrawerListTile(
            title: 'My Profile',
            icon: Icons.person_outline,
            function: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyProfilePage())),
          ),
          Divider(),
          _buildDrawerListTile(
            title: 'Past Events',
            icon: Icons.event,
            function: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => PastEvents())),
          ),
          Divider(),
          _buildDrawerListTile(
            title: 'App Coordinator',
            icon: Icons.code,
            function: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => AppCoordinator())),
          ),
          Divider(),
          _buildDrawerListTile(
            title: 'Contact Us',
            icon: Icons.phone,
            function: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactUsPage())),
          ),
          SizedBox(
            height: 80.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('For more updates follow us on:'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () =>
                          _launchUrl("https://www.facebook.com/IEEEPEC/"),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          right: 8.0,
                        ),
                        child: Image.asset(
                          'assets/images/facebook.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          _launchUrl("https://www.instagram.com/ieeepec/"),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Image.asset(
                          'assets/images/instagram.png',
                          width: 35.0,
                          height: 35.0,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          _launchUrl("https://www.twitter.com/IEEE_PEC/"),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Image.asset(
                          'assets/images/twitter.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
