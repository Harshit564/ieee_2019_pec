import 'package:flutter/material.dart';

class SponsorsPage extends StatelessWidget {
  static const String routeName = "/sponsors-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sponsors'),
        backgroundColor: Color(0xFF01588D),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridTile(
              child: Card(
                color: Color(0xFF01588D),
                child: Center(
                  child: Text(
                    'News $index',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
