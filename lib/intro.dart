import 'package:flutter/material.dart';
// import 'package:portfolio_site/main.dart';

class Intro extends StatefulWidget {
  final selectPage;
  final selectedPage;
  final scrollToSection;
  const Intro(
      {Key? key, this.selectPage, this.selectedPage, this.scrollToSection})
      : super(key: key);
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    bool isScreenMedium = MediaQuery.of(context).size.width < 1300;
    bool isScreenSmall = MediaQuery.of(context).size.width < 890;
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);

    return Container(
        margin: EdgeInsets.only(
            right: isScreenSmall ? 0 : 60, left: isScreenSmall ? 0 : 60),
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
            color: Colors.yellowAccent.shade100,
          )),
          color: Colors.yellowAccent.shade100,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          if (isScreenSmall == false)
            Container(
                width: 400,
                height: 550,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/person.jpg'),
                        fit: BoxFit.fill))),
          //! THIS IS THE WHOLE CONTAINER
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: isScreenSmall == false ? 20 : 0),
            margin:
                EdgeInsets.only(left: isScreenSmall == false ? 20 : 0, top: 0),
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      color: Colors.deepOrangeAccent,
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 5.0, right: 5.0, left: 5.0),
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: Text("Hi,",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Spartan"))),
                  Container(
                    margin: const EdgeInsets.only(bottom: 25.0),
                    color: Colors.white,
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 5.0, right: 5.0, left: 5.0),
                    child: RichText(
                      text: TextSpan(
                        text: "I'm ",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Spartan"),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'RAY DAVEY',
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.deepOrangeAccent,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Spartan")),
                        ],
                      ),
                    ),
                  ),
                  //! THIS CONTAINER TO BE CHANGED INTO SOMETHING DIFF ON SMALL WIOTH
                  isScreenMedium
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Container(
                                  color: Colors.green.shade700,
                                  margin: const EdgeInsets.only(bottom: 5.0),
                                  padding: const EdgeInsets.only(
                                      top: 10.0,
                                      bottom: 5.0,
                                      right: 5.0,
                                      left: 5.0),
                                  child: Text(
                                      " / fledgling software developer ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: "Spartan",
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  color: Colors.deepOrangeAccent,
                                  margin: const EdgeInsets.only(bottom: 5.0),
                                  padding: const EdgeInsets.only(
                                      top: 10.0,
                                      bottom: 5.0,
                                      right: 5.0,
                                      left: 5.0),
                                  child: Text(" / deep learning experimenter ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: "Spartan",
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  color: Colors.white,
                                  margin: const EdgeInsets.only(bottom: 20.0),
                                  padding: const EdgeInsets.only(
                                      top: 10.0,
                                      bottom: 5.0,
                                      right: 5.0,
                                      left: 5.0),
                                  child: Text(" / data enthusiast ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: "Spartan",
                                          fontSize: 18,
                                          color: Colors.deepOrangeAccent,
                                          fontWeight: FontWeight.bold))),
                            ])
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Container(
                                  color: Colors.green.shade700,
                                  margin: const EdgeInsets.only(bottom: 2.0),
                                  padding: const EdgeInsets.only(
                                      top: 10.0,
                                      bottom: 5.0,
                                      right: 5.0,
                                      left: 5.0),
                                  child: Text(
                                      " / fledgling software developer ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: "Spartan",
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  color: Colors.deepOrangeAccent,
                                  margin: const EdgeInsets.only(bottom: 2.0),
                                  padding: const EdgeInsets.only(
                                      top: 10.0,
                                      bottom: 5.0,
                                      right: 5.0,
                                      left: 5.0),
                                  child: Text(" / deep learning experimenter ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: "Spartan",
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  color: Colors.white,
                                  margin: const EdgeInsets.only(bottom: 40.0),
                                  padding: const EdgeInsets.only(
                                      top: 10.0,
                                      bottom: 5.0,
                                      right: 5.0,
                                      left: 5.0),
                                  child: Text(" / data enthusiast ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: "Spartan",
                                          fontSize: 18,
                                          color: Colors.deepOrangeAccent,
                                          fontWeight: FontWeight.bold))),
                            ])

                  // Container(
                  //     color: Colors.deepOrangeAccent,
                  //     margin: const EdgeInsets.only(bottom: 60.0),
                  //     padding: const EdgeInsets.only(
                  //         top: 10.0, bottom: 5.0, right: 5.0, left: 5.0),
                  //     child: Text(
                  //         "fledgling software developer / deep learning experimenter / data enthusiast",
                  //         style: TextStyle(
                  //             fontFamily: "Spartan",
                  //             fontSize: 18,
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold))),
                  //! THIS ROW TO BE CHANGED AS WELL
                  ,
                  isScreenMedium
                      ? Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 30, right: 30),
                                  child: SizedBox(
                                    height: 90,
                                    width: 130,
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          alignment: Alignment.center,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(20.0))),
                                          side: BorderSide(
                                              color: widget.selectedPage ==
                                                      "about me"
                                                  ? Colors.deepOrangeAccent
                                                  : Colors.white),
                                          backgroundColor: Colors.white,
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          // widget.selectPage("about me");
                                          widget.scrollToSection("about me");
                                        },
                                        child: const Text('about me')),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 30),
                                  child: SizedBox(
                                    height: 90,
                                    width: 130,
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          alignment: Alignment.center,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(20.0))),
                                          side: BorderSide(
                                              color:
                                                  widget.selectedPage == "work"
                                                      ? Colors.deepOrangeAccent
                                                      : Colors.white),
                                          backgroundColor: Colors.white,
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          // widget.selectPage("work");
                                          widget.scrollToSection("work");
                                        },
                                        child: const Text('work')),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20, right: 30),
                                  child: SizedBox(
                                    height: 90,
                                    width: 130,
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          alignment: Alignment.center,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(20.0))),
                                          side: BorderSide(
                                              color:
                                                  widget.selectedPage == "blog"
                                                      ? Colors.deepOrangeAccent
                                                      : Colors.white),
                                          backgroundColor: Colors.white,
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          widget.scrollToSection("blog");

                                          // widget.selectPage("blog");
                                        },
                                        child: const Text('blog')),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: SizedBox(
                                    height: 90,
                                    width: 130,
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          alignment: Alignment.center,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(20.0))),
                                          side: BorderSide(
                                              color: widget.selectedPage ==
                                                      "contact"
                                                  ? Colors.deepOrangeAccent
                                                  : Colors.white),
                                          backgroundColor: Colors.white,
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          // widget.selectPage("contact");
                                          widget.scrollToSection("contact");
                                        },
                                        child: const Text('contact')),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      : Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: SizedBox(
                                height: 130,
                                width: 130,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(20.0))),
                                      side: BorderSide(
                                          color:
                                              widget.selectedPage == "about me"
                                                  ? Colors.deepOrangeAccent
                                                  : Colors.white),
                                      backgroundColor: Colors.white,
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      // widget.selectPage("about me");
                                      widget.scrollToSection("about me");
                                    },
                                    child: const Text('about me')),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: SizedBox(
                                height: 130,
                                width: 130,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(20.0))),
                                      side: BorderSide(
                                          color: widget.selectedPage == "work"
                                              ? Colors.deepOrangeAccent
                                              : Colors.white),
                                      backgroundColor: Colors.white,
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      // widget.selectPage("work");
                                      widget.scrollToSection("work");
                                    },
                                    child: const Text('work')),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: SizedBox(
                                height: 130,
                                width: 130,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(20.0))),
                                      side: BorderSide(
                                          color: widget.selectedPage == "blog"
                                              ? Colors.deepOrangeAccent
                                              : Colors.white),
                                      backgroundColor: Colors.white,
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      widget.scrollToSection("blog");

                                      // widget.selectPage("blog");
                                    },
                                    child: const Text('blog')),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                              width: 130,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            bottomRight:
                                                Radius.circular(20.0))),
                                    side: BorderSide(
                                        color: widget.selectedPage == "contact"
                                            ? Colors.deepOrangeAccent
                                            : Colors.white),
                                    backgroundColor: Colors.white,
                                    textStyle: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    // widget.selectPage("contact");
                                    widget.scrollToSection("contact");
                                  },
                                  child: const Text('contact')),
                            )
                          ],
                        ),
                ],
              ),
            ),
          )
        ]));
  }
}
