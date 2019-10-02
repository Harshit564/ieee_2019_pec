import 'package:flutter/material.dart';
import 'package:ieee_student/Widgets/ind_event_listTile.dart';

import 'ind_event_page.dart';

class WorkshopPage extends StatelessWidget {
  static const String routeName = "/workshop-page";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workshops'),
        centerTitle: true,
        backgroundColor: Color(0xFF01588D),
      ),
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
