import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ieee_student/Pages/workshop_page.dart';
import 'package:ieee_student/Widgets/homepage_categories.dart';
import 'package:ieee_student/Widgets/drawer.dart';
import 'package:ieee_student/Widgets/carousel.dart';
import 'package:ieee_student/Pages/about_page.dart';
import 'package:ieee_student/Pages/events_page.dart';
import 'package:ieee_student/Pages/news_page.dart';
import 'package:ieee_student/Pages/sessions_page.dart';
import 'package:ieee_student/Pages/sponsors_page.dart';
import 'package:ieee_student/Widgets/icon_card.dart';
import 'package:ieee_student/Widgets/image_cards.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home-page";

  @override
  _HomePageState createState() => _HomePageState();
}

Future<bool> _willPopCallback(BuildContext context) async {
  Alert(
    context: context,
    type: AlertType.warning,
    title: "EXIT APP",
    desc: "Do you want to exit the app ?",
    buttons: [
      DialogButton(
        child: Text(
          "Cancel",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Color.fromRGBO(0, 179, 134, 1.0),
      ),
      DialogButton(
        child: Text(
          "Exit",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => exit(0),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0)
        ]),
      )
    ],
  ).show();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
        backgroundColor: Color(0xFF01527A),
        appBar: AppBar(
          title: Text(
            'IEEE Student Branch',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF01588D),
        ),
        drawer: HomePageDrawer(),
        body: ListView(
          children: <Widget>[
            HomePageCarousel(),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconCard(
                  iconData: Icons.event_note,
                  text: 'Events',
                  function: () => Navigator.pushNamed(context, EventsPage.routeName),
                ),
                IconCard(
                  iconData: Icons.chrome_reader_mode,
                  text: 'Workshops',
                  function: () => Navigator.pushNamed(context, WorkshopPage.routeName),
                ),
                IconCard(
                  iconData: Icons.apps,
                  text: 'Sessions',
                  function: () => Navigator.pushNamed(context, SessionsPage.routeName),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconCard(
                  iconData: Icons.account_box,
                  text: 'Sponsors',
                  function: () => Navigator.pushNamed(context, SponsorsPage.routeName),
                ),
                IconCard(
                  iconData: Icons.calendar_view_day,
                  text: 'News',
                  function: () => Navigator.pushNamed(context, NewsPage.routeName),
                ),
                IconCard(
                  iconData: Icons.info,
                  text: 'About Us',
                  function: () => Navigator.pushNamed(context, AboutPage.routeName),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 175.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue[50],
                ),
                child: Text(
                  'Upcoming Events',
                  style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              height: 250.0,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ImageCards(),
                    ImageCards(),
                    ImageCards(),
                    ImageCards(),
                    ImageCards(),
                    ImageCards(),
                    ImageCards(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
