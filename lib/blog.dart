import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Blog extends StatelessWidget {
  Blog({Key? key, this.scrollTo, this.scrollToSection}) : super(key: key);
  final scrollToSection;

  final scrollTo;
  @override
  Widget build(BuildContext context) {
    bool isScreenMedium = MediaQuery.of(context).size.width < 1300;
    bool isScreenSmall = MediaQuery.of(context).size.width < 850;
    final defaultText = new TextStyle(
        color: Colors.green.shade700,
        fontSize: isScreenSmall || isScreenMedium ? 14 : 20,
        fontWeight: FontWeight.bold);
    final linkText = new TextStyle(
        color: Colors.blue.shade700,
        fontSize: isScreenSmall || isScreenMedium ? 14 : 20,
        fontWeight: FontWeight.bold);
    return Column(
      children: [
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
                        "blog",
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
                          style: defaultText,
                          text:
                              "I hope to write more on what has already been a really interesting experience  getting into coding, and maybe it will be a blog one day. But for now here is an "),
                      TextSpan(
                          style: linkText,
                          text: "old blog ",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              var url = "http://jitbs.weebly.com/";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Cannot load URL";
                              }
                            }),
                      TextSpan(
                          style: defaultText,
                          text: "from when I was a paramedic, and my "),
                      TextSpan(
                          style: linkText,
                          text: "Medium ",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              var url = "https://medium.com/@raymondfdavey";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Cannot load URL";
                              }
                            }),
                      TextSpan(style: defaultText, text: "and "),
                      TextSpan(
                          style: linkText,
                          text: "Kaggle ",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              var url = "https://www.kaggle.com/raydavey";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Cannot load URL";
                              }
                            }),
                      TextSpan(
                          style: defaultText,
                          text:
                              "profiles, where I hope to contribute more as time goes on")
                    ])),

                    // Text(
                    //   "old blog from when I was a paramedic, and my Medium and Kaggle profiles where I hope to contribute more",
                    //   style: TextStyle(
                    //       color: Colors.green.shade700, fontSize: 20),
                    // )
                  ),
                )
              ]),
        ),
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
                  scrollTo(0);
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
                  scrollToSection("contact");
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
