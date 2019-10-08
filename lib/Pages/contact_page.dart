import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  Widget _buildContactGridTile({
    String imagePath,
    String name,
    String position,
    String email,
    String contact,
  }) {
    return GridTile(
      child: Column(
        children: <Widget>[
          ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 150.0,
              width: 150.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30.0,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    position,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    contact,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    email,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF01588D),
        elevation: 6.0,
        title: Text("Contact Us"),
        centerTitle: true,
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
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            _buildContactGridTile(
              contact: "8607096404",
              email: "jatinbatra@ieee.org",
              imagePath: "assets/images/team/jatin.jpg",
              name: "Jatin Batra",
              position: "IEEE Chairperson",
            ),
            _buildContactGridTile(
              contact: "9466825806",
              email: "harshima26@gmail.com",
              imagePath: "assets/images/team/Harshima.jpg",
              name: "Harshima Singla",
              position: "IEEE Vice-Chairperson",
            ),
            _buildContactGridTile(
              contact: "9417814157",
              email: "shreyagrg09@gmail.com",
              imagePath: "assets/images/team/Shreya.JPG",
              name: "Shreya Garg",
              position: "IEEE CS Chairperson",
            ),
            _buildContactGridTile(
              contact: "8968659922",
              email: "uppalutkarsh@ieee.org",
              imagePath: "assets/images/team/utkarsh.jpg",
              name: "Utkarsh Uppal",
              position: "IEEE PES Chairperson",
            ),
            _buildContactGridTile(
              contact: "8194947300",
              email: "prabhnoor1998@gmail.com",
              imagePath: "assets/images/team/Prabhnoor Kaur.PNG",
              name: "Prabhnoor Kaur",
              position: "IEEE WIE Chairperson",
            ),
            _buildContactGridTile(
              contact: "contact",
              email: "email",
              imagePath: "assets/images/team/Arnav Malhotra.jpeg",
              name: "Arnav Malhotra",
              position: "Tech-Coord Head",
            ),
            _buildContactGridTile(
              contact: "8901255830",
              email: "guptachetna1998@gmail.com",
              imagePath: "assets/images/team/Chetna Gupta.JPG",
              name: "Chetna Gupta",
              position: "Tech-Coord Head",
            ),
            _buildContactGridTile(
              contact: "8427014751",
              email: "shagundeepsingh@ieee.org",
              imagePath: "assets/images/team/Shagundeep Singh.jpg",
              name: "Shagundeep Singh",
              position: "Tech-Coord Head",
            ),
            _buildContactGridTile(
              contact: "8630093351",
              email: "sameergupta312972gmail.com",
              imagePath: "assets/images/team/Sameer.jpg",
              name: "Sameer Gupta",
              position: "Marketing and Business Relations Head",
            ),
            _buildContactGridTile(
              contact: "9530610167",
              email: "sanyamdhawan0001@gmail.com",
              imagePath: "assets/images/team/Sanyam Dhawan.jpg",
              name: "Sanyam Dhawan",
              position: "Creative Head",
            ),
            _buildContactGridTile(
              contact: "9821401080",
              email: "mukulsahni1203@gmail.com",
              imagePath: "assets/images/team/Mukul.jpeg",
              name: "Mukul Sahni",
              position: "PR and Content Head",
            ),
            _buildContactGridTile(
              contact: "9876661795",
              email: "raghav.gotam@gmail.com",
              imagePath: "assets/images/team/Raghav Gautam.jpg",
              name: "Raghav Gautam",
              position: "Technical Advisor",
            ),
          ],
        ),
      ),
    );
  }
}
