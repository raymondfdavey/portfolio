import 'package:flutter/material.dart';
import "projectsData.dart" as projects;

class ExpandedInfo extends StatefulWidget {
  const ExpandedInfo({Key? key, required this.project, required this.textColor})
      : super(key: key);
  final String project;
  final Color textColor;
  @override
  _ExpandedInfoState createState() => _ExpandedInfoState();
}

class _ExpandedInfoState extends State<ExpandedInfo> {
  final linkText = new TextStyle(
      color: Colors.blue.shade700, fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    // bool isScreenSmall = MediaQuery.of(context).size.width < 850;
    String projectString = widget.project;

    return Container(
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: widget.textColor, width: 0.1))),
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
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
                          color: widget.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        projects.info[projectString]["stack"],
                        style: TextStyle(color: widget.textColor, fontSize: 16),
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
                          color: widget.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        projects.info[projectString]["hosted"],
                        style: TextStyle(color: widget.textColor, fontSize: 16),
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
                          color: widget.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        projects.info[projectString]["about"],
                        style: TextStyle(color: widget.textColor, fontSize: 16),
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
                          color: widget.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        projects.info[projectString]["links"],
                        style: TextStyle(color: widget.textColor, fontSize: 16),
                      ),
                    ),
                  )
                ],
              )),
        ]));
  }
}
