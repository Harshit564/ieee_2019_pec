import 'package:flutter/material.dart';
import 'package:ieee_student/Pages/workshop_page.dart';
import 'package:ieee_student/Widgets/homepage_categories.dart';
import 'package:ieee_student/Widgets/drawer.dart';
import 'package:ieee_student/Widgets/carousel.dart';
import 'package:ieee_student/Pages/about_page.dart';
import 'package:ieee_student/Pages/events_page.dart';
import 'package:ieee_student/Pages/news_page.dart';
import 'package:ieee_student/Pages/sessions_page.dart';
import 'package:ieee_student/Pages/sponsors_page.dart';


class HomePage extends StatefulWidget {

  static const String routeName = "/home-page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IEEE Student Branch',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF01588D),
      ),
      drawer: HomePageDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF01588D),
              Color(0xFF01578f),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: <Widget>[
            HomePageCarousel(),
            SizedBox(
              height: 10.0,
            ),
            HomePageCategories(
              color: Colors.deepOrangeAccent,
              icon: Icons.event_note,
              title: 'Events',
              function:() =>  Navigator.push(context, MaterialPageRoute(builder: (context) => EventsPage())),
            ),
            HomePageCategories(
              color: Colors.orangeAccent,
              icon: Icons.info,
              title: 'Workshops',
              function:() =>  Navigator.pushNamed(context, WorkshopPage.routeName),
            ),
            HomePageCategories(
              color: Colors.green,
              icon: Icons.apps,
              title: 'Sessions',
              function:() =>  Navigator.pushNamed(context, SessionsPage.routeName),
            ),
            HomePageCategories(
              color: Colors.redAccent,
              icon: Icons.account_box,
              title: 'Sponsors',
              function:() =>  Navigator.pushNamed(context, SponsorsPage.routeName),
            ),
            HomePageCategories(
              color: Colors.blueAccent,
              icon: Icons.calendar_view_day,
              title: 'News',
              function:() =>  Navigator.pushNamed(context, NewsPage.routeName),
            ),
            HomePageCategories(
              color: Colors.orangeAccent,
              icon: Icons.info,
              title: 'About Us',
              function:() =>  Navigator.pushNamed(context, AboutPage.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
