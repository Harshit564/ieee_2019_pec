import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class HomePageCarousel extends StatelessWidget {

  Widget _buildCarouselCard({String imagePath}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 300.0,
        child: Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          color: Colors.transparent,
          elevation: 0.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250.0,
        width: 300.0,
        child: Carousel(
          images: [
            ExactAssetImage("assets/images/Robosoccer.jpg"),
            ExactAssetImage("assets/images/sql.jpg"),
            ExactAssetImage("assets/images/debugit.jpg"),
            ExactAssetImage("assets/images/code.jpg",),
            ExactAssetImage("assets/images/Rakhi.jpg"),
            ExactAssetImage("assets/images/meshmerize.jpg"),
          ],
          boxFit: BoxFit.contain,
          dotSize: 5.0,
          dotSpacing: 15.0,
          dotColor: Colors.white,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.black54.withOpacity(0.4),
          borderRadius: false,
          moveIndicatorFromBottom: 180.0,
          noRadiusForIndicator: true,
          overlayShadow: true,
          overlayShadowColors: Colors.white,
          overlayShadowSize: 0.7,
        )
    );


  }
}
