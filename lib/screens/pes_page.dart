import 'package:flutter/material.dart';
import 'package:ieee_student/Widgets/ind_event_listTile.dart';
import 'package:ieee_student/Pages/ind_event_page.dart';

class PESScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/contactBackground.jpg",
              ),
            ),
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              IndEventListTile(
                eventName: "Event Name",
                eventDate: "Event Date",
                onTapFunction: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IndEventPage(
                      eventName: "Event Name",
                    ),
                  ),
                ),
              ),
              IndEventListTile(
                eventName: "Event Name",
                eventDate: "Event Date",
                onTapFunction: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IndEventPage(
                      eventName: "Event Name",
                    ),
                  ),
                ),
              ),
              IndEventListTile(
                eventName: "Event Name",
                eventDate: "Event Date",
                onTapFunction: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IndEventPage(
                      eventName: "Event Name",
                    ),
                  ),
                ),
              ),
              IndEventListTile(
                eventName: "Event Name",
                eventDate: "Event Date",
                onTapFunction: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IndEventPage(
                      eventName: "Event Name",
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