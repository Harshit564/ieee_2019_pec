import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const String routeName = "/about-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "The Institute of Electrical and Electronics Engineers (IEEE) is a professional association dedicated to advancing technological innovation and excellence. It has about 425,000 members in about 160 countries.",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "The Student Chapter of IEEE in PEC was started in 2001 by Dr. Gurnam Singh. With 100+ active members, IEEE-PEC has been the strongest technical society not only in institute but entire region, for years it has served as a platform, with objective of spreading knowledge for enhancement of computer science, electrical and electronics engineers. Be it regular interactions, workshops, events or competitions, IEEE PEC has done it all. Guest lectures have been an old tradition and we have hosted Dr. Ravi Sehgal (MD, General Electric), Er. Ashish Jain (DGM, ONGC), just to name a few.",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "IEEE has been essential to the global technical community and to technical professionals everywhere, and has been universally recognized for the contributions of technology and of technical professionals in improving global conditions.",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "To provide quality and competitive environment we have collaborated with various IIT’s to host workshops and online platforms like Hackerearth for different competitions. Activities organized by IEEE PEC are central hub for technical action during our institutes, annual Technical-Cultural fest, PECFEST. Events ranging from PEC Hackathons for developers and coders to Design your Web, circuit trek and Light it up for electrical and electronic geeks, see great participation. Our vision to conquer zenith, zeal to learn, and the cooperation among the members has been constantly driving us forward and encouraging the budding minds at PEC to innovate for better good of society and excel in all fields.",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Taking a step ahead apart from the workshops, sessions, events, members of society also indulge in projects ranging from the field of computer vision to smart city, IOT & sensors to android and website development. Members of student branch have brought many laurels to the institute by winning various International and National events.",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "CONTACT : ieee@pec.edu..in",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
