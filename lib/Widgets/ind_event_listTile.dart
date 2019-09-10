import 'package:flutter/material.dart';

class IndEventListTile extends StatelessWidget {
  final String eventName;
  final String eventDate;
  final Function onTapFunction;

  IndEventListTile({this.eventName, this.eventDate, this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        bottom: 10.0,
      ),
      child: Card(
        elevation: 8.0,
        child: ListTile(
          onTap: onTapFunction,
          leading: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              child: Icon(
                Icons.event_note,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
          title: Text(
            eventName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              "Date : $eventDate",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
