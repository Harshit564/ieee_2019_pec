import 'package:flutter/material.dart';

class IndEventPage extends StatelessWidget {
  final String eventName;
  final String eventDate;
  final String eventLocation;
  final String eventTime;
  final String eventDescription;
  final String eventHostName;

  IndEventPage({
    @required this.eventName,
    this.eventDate = "Not Available",
    this.eventLocation = "Not Available",
    this.eventTime = "Not Available",
    this.eventDescription,
    this.eventHostName = "IEEE PEC",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(eventName),
        centerTitle: true,
        backgroundColor: Color(0xFF01588D),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(
                child: 
                  Image.asset("assets/images/code.jpg")
              ),
              height: 200.0,
              width: 200.0,
              color: Color(0xFF01588D),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              eventName,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25.0,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.calendar_today,
                    color: Colors.grey.shade700,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 2.0,
                        ),
                        child: Text(
                          "Date",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Text(eventDate),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.access_time,
                    color: Colors.grey.shade700,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.0),
                        child: Text(
                          "Time",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Text(eventTime),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.grey.shade700,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.0),
                        child: Text(
                          "Location",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Text(eventLocation),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  left: 8.0,
                ),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade900,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: Text(
                  '''Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).''',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 17.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Text(
                  'Event Host',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade900,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: Text(
                  eventHostName,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
