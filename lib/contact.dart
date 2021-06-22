import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  Contact({Key? key, this.scrollTo}) : super(key: key);

  final scrollTo;
  @override
  @override
  Widget build(BuildContext context) {
    bool isScreenMedium = MediaQuery.of(context).size.width < 1300;
    bool isScreenSmall = MediaQuery.of(context).size.width < 850;
    // final defaultText = new TextStyle(
    //     color: Colors.green.shade700,
    //     fontSize: isScreenSmall || isScreenMedium ? 14 : 20,
    //     fontWeight: FontWeight.bold);
    final linkStyle = new TextStyle(
        color: Colors.blue.shade700,
        fontSize: isScreenSmall || isScreenMedium ? 14 : 20,
        fontWeight: FontWeight.bold);
    return Column(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.only(bottomRight: Radius.circular(20.0))),
        margin: EdgeInsets.only(
            top: 50,
            bottom: 50,
            left: isScreenSmall ? 20 : 100,
            right: isScreenSmall ? 20 : 100),
        padding: EdgeInsets.all(30),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              if (isScreenSmall == false)
                Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "contact",
                      style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              Expanded(
                child: Container(
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Colors.black, width: 0.5))),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          style: TextStyle(
                              color: Colors.green.shade700,
                              fontSize:
                                  isScreenSmall || isScreenMedium ? 14 : 20),
                          text: "email me at: "),
                      TextSpan(
                        style: linkStyle,
                        text: "raymondfdavey@gmail.com",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            final Uri _emailLaunchUri = Uri(
                                scheme: 'mailto',
                                path: 'raymondfdavey@gmail.com.com',
                                queryParameters: {'subject': 'hi'});
                            if (await canLaunch(_emailLaunchUri.toString())) {
                              await launch(_emailLaunchUri.toString());
                            } else {
                              throw "Cannot load email";
                            }
                          },
                      )
                    ]))),
              )
            ]),
      ),
      Container(
        padding: EdgeInsets.only(bottom: 20),
        child: IconButton(
          icon: Icon(Icons.arrow_circle_up),
          iconSize: 40,
          color: Colors.deepOrangeAccent,
          onPressed: () {
            scrollTo(0);
          },
        ),
      )
    ]);
  }
}
