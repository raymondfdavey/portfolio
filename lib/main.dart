import 'package:flutter/material.dart';
import 'package:portfolio_site/contact.dart';
import 'package:portfolio_site/intro.dart';
import 'package:portfolio_site/separator.dart';
import 'package:portfolio_site/about.dart';
import 'package:portfolio_site/work.dart';
import 'package:portfolio_site/blog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ray Davey | Portfolio',
        theme: new ThemeData(
            scaffoldBackgroundColor: Colors.blue.shade700,
            fontFamily: 'Spartan'),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey _keySeparator0 = GlobalKey();
  GlobalKey _keySeparator1 = GlobalKey();
  GlobalKey _keySeparator2 = GlobalKey();
  GlobalKey _keySeparator3 = GlobalKey();

  GlobalKey _keyTop = GlobalKey();
  final controller = ScrollController();

  String selectedPage = "";
  List<String> pages = ["about me", "work", "blog", "contact"];
  int currentIndex = 0;

  scrollUp() {
    scrollToSection(pages[currentIndex]);
    setState(() {
      currentIndex = currentIndex;
      selectedPage = pages[currentIndex];
    });
  }

  scrollDown() {
    scrollToSection(pages[currentIndex]);
    setState(() {
      currentIndex = currentIndex;
      selectedPage = pages[currentIndex];
    });
  }

  scrollToSection(page) {
    setState(() {
      selectedPage = page;
      currentIndex = pages.indexOf(page);
    });
    final List<GlobalKey> keys = [
      _keySeparator0,
      _keySeparator1,
      _keySeparator2,
      _keySeparator3
    ];

    int indexToScrollTo = pages.indexOf(page);
    GlobalKey correctSeparatorKey = keys[indexToScrollTo];
    print("separatorKey");
    print(correctSeparatorKey);
    scrollToSeparator(correctSeparatorKey);
  }

  @override
  void dispose() {
    controller.dispose(); // dispose the controller
    super.dispose();
  }

  void scrollTo(double number) {
    controller.jumpTo(number);
    // controller.animateTo(number,
    //     duration: Duration(milliseconds: 500), curve: Curves.linear);
  }

  scrollToSeparator(selectedKey) {
    print("GOING TO SEPARATOR");
    final RenderBox renderBoxSeparator =
        selectedKey.currentContext!.findRenderObject() as RenderBox;
    final positionSeparator = renderBoxSeparator.localToGlobal(Offset.zero);

    final RenderBox renderBoxTop =
        _keyTop.currentContext?.findRenderObject() as RenderBox;
    final positionTop = renderBoxTop.localToGlobal(Offset.zero);

    scrollTo(positionSeparator.dy - positionTop.dy);
  }

//400, 550
  @override
  Widget build(BuildContext context) {
    // bool isScreenMedium = MediaQuery.of(context).size.width < 1300;
    bool isScreenSmall = MediaQuery.of(context).size.width < 850;
    print("SELECTED PAGE IS:");
    print(this.selectedPage);
    print("currentINDEX is:");
    print(this.currentIndex);
    return Scaffold(
        body: SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          Container(
              key: _keyTop,
              width: double.infinity,
              margin: EdgeInsets.only(
                  left: isScreenSmall ? 0 : 60, right: isScreenSmall ? 0 : 60),
              padding: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                  width: 10,
                  color: Colors.yellowAccent.shade100,
                )),
                color: Colors.yellowAccent.shade100,
              ),
              child: Column(children: [
                Container(
                    margin: EdgeInsets.only(bottom: 8, top: 20),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 8, color: Colors.green.shade700)))),
                Container(
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 8, color: Colors.deepOrangeAccent)))),
                Container(
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(width: 8, color: Colors.white))))
              ])),
          Intro(selectedPage: selectedPage, scrollToSection: scrollToSection),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
                left: isScreenSmall ? 0 : 60, right: isScreenSmall ? 0 : 60),
            padding: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                width: 10,
                color: Colors.yellowAccent.shade100,
              )),
              color: Colors.yellowAccent.shade100,
            ),
            child: Column(
              children: <Widget>[
                Separator(key: _keySeparator0),
                About(
                  scrollToSection: scrollToSection,
                  scrollTo: scrollTo,
                  scrollDown: scrollDown,
                ),
                Separator(key: _keySeparator1),
                Work(
                  scrollToSection: scrollToSection,
                  scrollDown: scrollDown,
                ),
                Separator(key: _keySeparator2),
                Blog(
                  scrollToSection: scrollToSection,

                  // scrollDown: scrollDown,
                ),
                Separator(key: _keySeparator3),
                Contact(
                  scrollTo: scrollTo,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
    // ],
    // ));
  }
}
