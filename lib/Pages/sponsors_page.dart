import 'package:flutter/material.dart';

class SponsorsPage extends StatelessWidget {
  static const String routeName = "/sponsors-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sponsors'),
          centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (context, int position){
            return GridTile(
              child: Image.asset('assets/images/image1.jpeg'),
            );
          },
        ));
  }
}
