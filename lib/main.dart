import 'package:flutter/material.dart';
import 'package:ieee_student/Pages/workshop_page.dart';
import 'Pages/home_page.dart';
import 'package:ieee_student/Pages/student_login_Page.dart';
import 'package:ieee_student/Pages/login_page_choice.dart';
import 'package:ieee_student/Pages/organisation_login_page.dart';
import 'package:ieee_student/Pages/about_page.dart';
import 'package:ieee_student/Pages/events_page.dart';
import 'package:ieee_student/Pages/news_page.dart';
import 'package:ieee_student/Pages/sessions_page.dart';
import 'package:ieee_student/Pages/sponsors_page.dart';
import 'Pages/splash_screen_1.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]).then((val){
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'IEEE Student',
      home: SplashScreen1(),
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),

      routes: {
        HomePage.routeName : (context) => HomePage(),
        StudentLoginPage.routeName : (context) => StudentLoginPage(),
        LoginPageChoice.routeName : (context) => LoginPageChoice(),
        OrganisationLoginPage.routeName: (context) => OrganisationLoginPage(),
        AboutPage.routeName: (context) => AboutPage(),
        EventsPage.routeName: (context) => EventsPage(),
        NewsPage.routeName: (context) => NewsPage(),
        SessionsPage.routeName: (context) => SessionsPage(),
        SponsorsPage.routeName: (context) => SponsorsPage(),
        WorkshopPage.routeName: (context) => WorkshopPage(),
      },
    );
  }
}

