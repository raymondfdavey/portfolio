import 'package:flutter/material.dart';

class ExpandedInfo extends StatefulWidget {
  const ExpandedInfo({Key? key, required this.project}) : super(key: key);
  final String project;
  @override
  _ExpandedInfoState createState() => _ExpandedInfoState();
}

class _ExpandedInfoState extends State<ExpandedInfo> {
  final Map info = {
    "MPS INTERESTS": {
      "color": Colors.deepOrangeAccent,
      "textStyleHeader": TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 20,
          fontWeight: FontWeight.bold),
      "textStyleBody": TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
      "stack": "python (data scraping), mongoDB, node.js, flutter/dart",
      "about":
          "This solo project came about after playing around on the parliamentary API for a mobile app I am currently working on. I noticed that the API did not return any results for MP's registered interests, and that the information was very hard to access systematically on their website. This site is an effort to fill that gap.",
      "links": "some links",
      "hosted": "azure"
    },
    "NC NEWS": {
      "color": Colors.white,
      "textStyleHeader": TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      "textStyleBody": TextStyle(color: Colors.white, fontSize: 20),
      "stack": "SQL, node.js, react.js",
      "about":
          " This was a week long programming assignment on the full-stack developers bootcamp I did (Northcoders, Manchester). The data for seeding the database came as part of the assignment.",
      "links": "some links",
      "hosted": "heroku"
    },
    "YRGLSET": {
      "color": Colors.white,
      "textStyleHeader": TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      "textStyleBody": TextStyle(color: Colors.white, fontSize: 20),
      "stack": "SQL, node.js, react.js",
      "about":
          "I made this partly to practice linking front and back end, and to try and get authentication going on a project. I also really wanted to set some goals for the coming year although coronovirus didn't help much",
      "links": "some links",
      "hosted": "heroku"
    },
    "WHO'S WHERE": {
      "color": Colors.deepOrangeAccent,
      "textStyleHeader": TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 20,
          fontWeight: FontWeight.bold),
      "textStyleBody": TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
      "stack": "react.js",
      "about": "Paired programming assignment for Northcoders bootcamp ",
      "links": "some links",
      "hosted": "GitHub pages"
    },
    "QUAKE DATA": {
      "color": Colors.deepOrangeAccent,
      "textStyleHeader": TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 20,
          fontWeight: FontWeight.bold),
      "textStyleBody": TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
      "stack": "react.js",
      "about":
          "Paired programming assignment, picked a public API and built a front end to present the data served by it system",
      "links": "some links",
      "hosted": "GitHub pages"
    },
  };
  final linkText = new TextStyle(
      color: Colors.blue.shade700, fontSize: 20, fontWeight: FontWeight.bold);
  final normalTextOrange = new TextStyle(
      color: Colors.deepOrangeAccent,
      fontSize: 20,
      fontWeight: FontWeight.bold);
  final normalTextWhite = new TextStyle(
      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    bool isScreenSmall = MediaQuery.of(context).size.width < 850;

    String projectString = widget.project;
    return Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: info[projectString]["color"], width: 0.1))),
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(children: [
          Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      "stack:",
                      style: TextStyle(
                          color: info[projectString]["color"],
                          fontSize: isScreenSmall ? 16 : 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        info[projectString]["stack"],
                        style: TextStyle(
                            color: info[projectString]["color"],
                            fontSize: isScreenSmall ? 16 : 20),
                      ),
                    ),
                  )
                ],
              )),
          Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      "hosted:",
                      style: TextStyle(
                          color: info[projectString]["color"],
                          fontSize: isScreenSmall ? 16 : 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        info[projectString]["hosted"],
                        style: TextStyle(
                            color: info[projectString]["color"],
                            fontSize: isScreenSmall ? 16 : 20),
                      ),
                    ),
                  )
                ],
              )),
          Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      "about:",
                      style: TextStyle(
                          color: info[projectString]["color"],
                          fontSize: isScreenSmall ? 16 : 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        info[projectString]["about"],
                        style: TextStyle(
                            color: info[projectString]["color"],
                            fontSize: isScreenSmall ? 16 : 20),
                      ),
                    ),
                  )
                ],
              )),
          Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      "links:",
                      style: TextStyle(
                          color: info[projectString]["color"],
                          fontSize: isScreenSmall ? 16 : 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        info[projectString]["links"],
                        style: TextStyle(
                            color: info[projectString]["color"],
                            fontSize: isScreenSmall ? 16 : 20),
                      ),
                    ),
                  )
                ],
              )),
        ]));
  }
}
