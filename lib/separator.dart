import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  const Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.only(bottom: 8, top: 0),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(width: 8, color: Colors.green.shade700)))),
      Container(
          margin: EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(width: 8, color: Colors.deepOrangeAccent)))),
      Container(
          margin: EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 8, color: Colors.white))))
    ]);
  }
}
