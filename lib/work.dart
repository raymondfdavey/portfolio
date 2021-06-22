// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:portfolio_site/expandedInfo.dart';
import 'package:portfolio_site/workTile.dart';
// import 'package:url_launcher/url_launcher.dart';
import "projectsData.dart" as projects;

class Work extends StatefulWidget {
  const Work({Key? key, this.scrollTo, this.scrollDown, this.scrollToSection})
      : super(key: key);
  final scrollDown;
  final scrollToSection;
  final scrollTo;
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    print("JUST A LIKKLE TEST");
    print(projects.info["MPS INTERESTS"]["title"]);
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: IconButton(
                icon: Icon(Icons.arrow_circle_up),
                iconSize: 40,
                color: Colors.deepOrangeAccent,
                onPressed: () {
                  widget.scrollToSection('about me');
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: IconButton(
                icon: Icon(Icons.arrow_circle_down),
                iconSize: 40,
                color: Colors.deepOrangeAccent,
                onPressed: () {
                  widget.scrollToSection("blog");
                },
              ),
            )
          ],
        ),
        WorkTile(
            backgroundColor: Colors.white,
            textColor: Colors.deepOrangeAccent,
            projectName: "MPS INTERESTS"),
        WorkTile(
            backgroundColor: Colors.deepOrangeAccent,
            textColor: Colors.white,
            projectName: "NC NEWS"),
        WorkTile(
            backgroundColor: Colors.green.shade500,
            textColor: Colors.white,
            projectName: "YRGLSET"),
        WorkTile(
            backgroundColor: Colors.white,
            textColor: Colors.deepOrangeAccent,
            projectName: "WHO'S WHERE"),
        WorkTile(
            backgroundColor: Colors.deepOrangeAccent,
            textColor: Colors.white,
            projectName: "QUAKE DATA"),
        WorkTile(
            backgroundColor: Colors.green.shade500,
            textColor: Colors.white,
            projectName: "FREE THE BEES!"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: IconButton(
                icon: Icon(Icons.arrow_circle_up),
                iconSize: 40,
                color: Colors.deepOrangeAccent,
                onPressed: () {
                  widget.scrollToSection('work');
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: IconButton(
                icon: Icon(Icons.arrow_circle_down),
                iconSize: 40,
                color: Colors.deepOrangeAccent,
                onPressed: () {
                  widget.scrollToSection("blog");
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
