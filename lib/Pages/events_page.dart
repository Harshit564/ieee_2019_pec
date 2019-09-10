import 'package:flutter/material.dart';
import 'package:ieee_student/screens/cs_page.dart';
import 'package:ieee_student/screens/pes_page.dart';
import 'package:ieee_student/screens/wie_page.dart';

class EventsPage extends StatelessWidget {
  static const String routeName = '/tabar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Events'),
        backgroundColor: Color(0xFF01588D),
        centerTitle: true,
      ),
      body: new DefaultTabController(
        length: 3,
        child: new Column(
          children: <Widget>[
            new Container(
              constraints: BoxConstraints(maxHeight: 150.0),
              child: new Material(
                color: Colors.white,
                child: new TabBar(
                  indicatorColor: Color(0xFF01588D),
                  labelColor: Colors.white,
                  unselectedLabelColor: Color(0xFF01588D),
                  indicator: BoxDecoration(
                    color: Color(0xFF01588D),
                  ),
                  tabs: [
                    new Tab(
                      icon: new Icon(Icons.computer),
                      text: "CS",
//                      child: Container(color: Color(0xFF01588D),),
                    ),
                    new Tab(
                      icon: new Icon(Icons.mobile_screen_share),
                      text: "WIE",
                    ),
                    new Tab(
                      icon: new Icon(Icons.alarm),
                      text: "PES",
                    ),
                  ],
                ),
              ),
            ),
            new Expanded(
              child: new TabBarView(
                children: [
                  CSScreen(),
                  WIEScreen(),
                  PESScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
