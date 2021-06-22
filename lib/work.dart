import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_site/expandedInfo.dart';
import 'package:url_launcher/url_launcher.dart';

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
  bool expanded1 = false;
  bool expanded2 = false;
  bool expanded3 = false;
  bool expanded4 = false;
  bool expanded5 = false;
  bool expanded6 = false;
  bool expanded7 = false;
  bool expanded8 = false;
  bool expanded9 = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);

    bool isScreenMedium = MediaQuery.of(context).size.width < 1300;
    bool isScreenSmall = MediaQuery.of(context).size.width < 850;
    bool isScreenInbetween = MediaQuery.of(context).size.width < 1050;
    return Column(
      children: <Widget>[
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.deepOrangeAccent,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: Column(
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 child: Flex(
//                   direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Container(
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                                 height: 150,
//                                 width: 150,
//                                 margin: EdgeInsets.all(20),
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage('/images/commons.jpg'),
//                                         fit: BoxFit.fill),
//                                     borderRadius: BorderRadius.only(
//                                         bottomRight: Radius.circular(20)))),
//                             Container(
//                                 decoration: BoxDecoration(
//                                     border: Border(
//                                         left: BorderSide(
//                                             color: Colors.white, width: 0.5))),
//                                 padding: EdgeInsets.only(right: 12, left: 20),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       "NC NEWS",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: isScreenSmall ? 15 : 18),
//                                     ),
//                                     Container(
//                                         padding: EdgeInsets.only(top: 20),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               padding:
//                                                   EdgeInsets.only(right: 12),
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "GitHub",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                             Container(
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "LIVE",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://registeredinterests.azurewebsites.net/#/";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                           ],
//                                         ))
//                                   ],
//                                 )),
//                           ]),
//                     ),
//                     Flexible(
//                       fit: FlexFit.loose,
//                       child: Container(
//                           padding: EdgeInsets.only(
//                               left: 20, right: 20, top: 20, bottom: 20),
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   top: BorderSide(
//                                       color: Colors.white, width: 0.3))),
//                           child: Theme(
//                             data: theme,
//                             child: ExpansionTile(
//                               onExpansionChanged: (onExpansionChanged) {
//                                 print("CHANGING EXPANSESION");

//                                 setState(() {
//                                   expanded2 = !expanded2;
//                                 });
//                               },
//                               title: Text(
//                                 "Full stack reddit-style news site displaying articles, votes, and comments",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 20),
//                               ),
//                             ),
//                           )),
//                     ),
//                     if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.deepOrangeAccent,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: Column(
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 child: Flex(
//                   direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Container(
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                                 height: 150,
//                                 width: 150,
//                                 margin: EdgeInsets.all(20),
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage('/images/commons.jpg'),
//                                         fit: BoxFit.fill),
//                                     borderRadius: BorderRadius.only(
//                                         bottomRight: Radius.circular(20)))),
//                             Container(
//                                 decoration: BoxDecoration(
//                                     border: Border(
//                                         left: BorderSide(
//                                             color: Colors.white, width: 0.5))),
//                                 padding: EdgeInsets.only(right: 12, left: 20),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       "NC NEWS",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: isScreenSmall ? 15 : 18),
//                                     ),
//                                     Container(
//                                         padding: EdgeInsets.only(top: 20),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               padding:
//                                                   EdgeInsets.only(right: 12),
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "GitHub",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                             Container(
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "LIVE",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://registeredinterests.azurewebsites.net/#/";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                           ],
//                                         ))
//                                   ],
//                                 )),
//                           ]),
//                     ),
//                     Flexible(
//                       fit: FlexFit.loose,
//                       child: Container(
//                           padding: EdgeInsets.only(
//                               left: 20, right: 20, top: 20, bottom: 20),
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   top: BorderSide(
//                                       color: Colors.white, width: 0.3))),
//                           child: Theme(
//                             data: theme,
//                             child: ExpansionTile(
//                               onExpansionChanged: (onExpansionChanged) {
//                                 print("CHANGING EXPANSESION");

//                                 setState(() {
//                                   expanded2 = !expanded2;
//                                 });
//                               },
//                               title: Text(
//                                 "Full stack reddit-style news site displaying articles, votes, and comments",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 20),
//                               ),
//                             ),
//                           )),
//                     ),
//                     if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.deepOrangeAccent,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: Column(
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 child: Flex(
//                   direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Container(
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                                 height: 150,
//                                 width: 150,
//                                 margin: EdgeInsets.all(20),
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage('/images/commons.jpg'),
//                                         fit: BoxFit.fill),
//                                     borderRadius: BorderRadius.only(
//                                         bottomRight: Radius.circular(20)))),
//                             Container(
//                                 decoration: BoxDecoration(
//                                     border: Border(
//                                         left: BorderSide(
//                                             color: Colors.white, width: 0.5))),
//                                 padding: EdgeInsets.only(right: 12, left: 20),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       "NC NEWS",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: isScreenSmall ? 15 : 18),
//                                     ),
//                                     Container(
//                                         padding: EdgeInsets.only(top: 20),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               padding:
//                                                   EdgeInsets.only(right: 12),
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "GitHub",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                             Container(
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "LIVE",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://registeredinterests.azurewebsites.net/#/";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                           ],
//                                         ))
//                                   ],
//                                 )),
//                           ]),
//                     ),
//                     Flexible(
//                       fit: FlexFit.loose,
//                       child: Container(
//                           padding: EdgeInsets.only(
//                               left: 20, right: 20, top: 20, bottom: 20),
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   top: BorderSide(
//                                       color: Colors.white, width: 0.3))),
//                           child: Theme(
//                             data: theme,
//                             child: ExpansionTile(
//                               onExpansionChanged: (onExpansionChanged) {
//                                 print("CHANGING EXPANSESION");

//                                 setState(() {
//                                   expanded2 = !expanded2;
//                                 });
//                               },
//                               title: Text(
//                                 "Full stack reddit-style news site displaying articles, votes, and comments",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 20),
//                               ),
//                             ),
//                           )),
//                     ),
//                     if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.deepOrangeAccent,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: Column(
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 child: Flex(
//                   direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Container(
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                                 height: 150,
//                                 width: 150,
//                                 margin: EdgeInsets.all(20),
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage('/images/commons.jpg'),
//                                         fit: BoxFit.fill),
//                                     borderRadius: BorderRadius.only(
//                                         bottomRight: Radius.circular(20)))),
//                             Container(
//                                 decoration: BoxDecoration(
//                                     border: Border(
//                                         left: BorderSide(
//                                             color: Colors.white, width: 0.5))),
//                                 padding: EdgeInsets.only(right: 12, left: 20),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       "NC NEWS",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: isScreenSmall ? 15 : 18),
//                                     ),
//                                     Container(
//                                         padding: EdgeInsets.only(top: 20),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               padding:
//                                                   EdgeInsets.only(right: 12),
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "GitHub",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                             Container(
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "LIVE",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://registeredinterests.azurewebsites.net/#/";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                           ],
//                                         ))
//                                   ],
//                                 )),
//                           ]),
//                     ),
//                     Flexible(
//                       fit: FlexFit.loose,
//                       child: Container(
//                           padding: EdgeInsets.only(
//                               left: 20, right: 20, top: 20, bottom: 20),
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   top: BorderSide(
//                                       color: Colors.white, width: 0.3))),
//                           child: Theme(
//                             data: theme,
//                             child: ExpansionTile(
//                               onExpansionChanged: (onExpansionChanged) {
//                                 print("CHANGING EXPANSESION");

//                                 setState(() {
//                                   expanded2 = !expanded2;
//                                 });
//                               },
//                               title: Text(
//                                 "Full stack reddit-style news site displaying articles, votes, and comments",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 20),
//                               ),
//                             ),
//                           )),
//                     ),
//                     if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.deepOrangeAccent,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: Column(
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 child: Flex(
//                   direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Container(
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                                 height: 150,
//                                 width: 150,
//                                 margin: EdgeInsets.all(20),
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage('/images/commons.jpg'),
//                                         fit: BoxFit.fill),
//                                     borderRadius: BorderRadius.only(
//                                         bottomRight: Radius.circular(20)))),
//                             Container(
//                                 decoration: BoxDecoration(
//                                     border: Border(
//                                         left: BorderSide(
//                                             color: Colors.white, width: 0.5))),
//                                 padding: EdgeInsets.only(right: 12, left: 20),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       "NC NEWS",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: isScreenSmall ? 15 : 18),
//                                     ),
//                                     Container(
//                                         padding: EdgeInsets.only(top: 20),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               padding:
//                                                   EdgeInsets.only(right: 12),
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "GitHub",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                             Container(
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "LIVE",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://registeredinterests.azurewebsites.net/#/";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                           ],
//                                         ))
//                                   ],
//                                 )),
//                           ]),
//                     ),
//                     Flexible(
//                       fit: FlexFit.loose,
//                       child: Container(
//                           padding: EdgeInsets.only(
//                               left: 20, right: 20, top: 20, bottom: 20),
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   top: BorderSide(
//                                       color: Colors.white, width: 0.3))),
//                           child: Theme(
//                             data: theme,
//                             child: ExpansionTile(
//                               onExpansionChanged: (onExpansionChanged) {
//                                 print("CHANGING EXPANSESION");

//                                 setState(() {
//                                   expanded2 = !expanded2;
//                                 });
//                               },
//                               title: Text(
//                                 "Full stack reddit-style news site displaying articles, votes, and comments",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 20),
//                               ),
//                             ),
//                           )),
//                     ),
//                     if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.deepOrangeAccent,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: Column(
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 child: Flex(
//                   direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Container(
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                                 height: 150,
//                                 width: 150,
//                                 margin: EdgeInsets.all(20),
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage('/images/commons.jpg'),
//                                         fit: BoxFit.fill),
//                                     borderRadius: BorderRadius.only(
//                                         bottomRight: Radius.circular(20)))),
//                             Container(
//                                 decoration: BoxDecoration(
//                                     border: Border(
//                                         left: BorderSide(
//                                             color: Colors.white, width: 0.5))),
//                                 padding: EdgeInsets.only(right: 12, left: 20),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       "NC NEWS",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: isScreenSmall ? 15 : 18),
//                                     ),
//                                     Container(
//                                         padding: EdgeInsets.only(top: 20),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               padding:
//                                                   EdgeInsets.only(right: 12),
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "GitHub",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                             Container(
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "LIVE",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://registeredinterests.azurewebsites.net/#/";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                           ],
//                                         ))
//                                   ],
//                                 )),
//                           ]),
//                     ),
//                     Flexible(
//                       fit: FlexFit.loose,
//                       child: Container(
//                           padding: EdgeInsets.only(
//                               left: 20, right: 20, top: 20, bottom: 20),
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   top: BorderSide(
//                                       color: Colors.white, width: 0.3))),
//                           child: Theme(
//                             data: theme,
//                             child: ExpansionTile(
//                               onExpansionChanged: (onExpansionChanged) {
//                                 print("CHANGING EXPANSESION");

//                                 setState(() {
//                                   expanded2 = !expanded2;
//                                 });
//                               },
//                               title: Text(
//                                 "Full stack reddit-style news site displaying articles, votes, and comments",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 20),
//                               ),
//                             ),
//                           )),
//                     ),
//                     if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         //! FIRST WHITE START
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: isScreenSmall
//               ? Column(children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                       Widget>[
//                     Container(
//                         height: 150,
//                         width: 150,
//                         padding: EdgeInsets.only(right: 10, left: 10),
//                         margin: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('/images/commons.jpg'),
//                                 fit: BoxFit.fill),
//                             borderRadius: BorderRadius.only(
//                                 bottomRight: Radius.circular(20)))),
//                     Container(
//                         decoration: BoxDecoration(
//                             border: Border(
//                                 left: BorderSide(
//                                     color: Colors.black, width: 0.5))),
//                         padding: EdgeInsets.only(right: 12, left: 20),
//                         child: Column(
//                           children: [
//                             Text(
//                               "MP's INTERESTS",
//                               style: TextStyle(
//                                   color: Colors.deepOrangeAccent,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: isScreenSmall ? 15 : 18),
//                             ),
//                             Container(
//                                 color: Colors.deepOrangeAccent.withOpacity(0.2),
//                                 margin: EdgeInsets.only(
//                                     top: 20, left: 10, right: 10),
//                                 padding: EdgeInsets.only(
//                                     bottom: 2, top: 2, left: 10, right: 10),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 12),
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "GitHub",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                     Container(
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "LIVE",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://registeredinterests.azurewebsites.net/#/";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                   ],
//                                 )),
//                           ],
//                         )),
//                   ]),
//                   Container(
//                       padding: EdgeInsets.only(
//                           left: 20, right: 20, top: 20, bottom: 20),
//                       decoration: BoxDecoration(
//                           border: Border(
//                               top: BorderSide(
//                                   color: Colors.deepOrangeAccent, width: 0.3))),
//                       child: Theme(
//                         data: theme,
//                         child: ExpansionTile(
//                           onExpansionChanged: (onExpansionChanged) {
//                             print("CHANGING EXPANSESION");

//                             setState(() {
//                               expanded1 = !expanded1;
//                             });
//                           },
//                           title: Text(
//                             "Full stack web app for finding MP's registered interests by name",
//                             style: TextStyle(
//                                 color: Colors.deepOrangeAccent, fontSize: 20),
//                           ),
//                         ),
//                       )),
//                   if (expanded1 == true) ExpandedInfo(project: "MPS INTERESTS"),
//                 ])
//               : Column(
//                   children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                         Widget>[
//                       Container(
//                           height: 150,
//                           width: 150,
//                           margin: EdgeInsets.all(20),
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('/images/commons.jpg'),
//                                   fit: BoxFit.fill),
//                               borderRadius: BorderRadius.only(
//                                   bottomRight: Radius.circular(20)))),
//                       Container(
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   left: BorderSide(
//                                       color: Colors.black, width: 0.5))),
//                           padding: EdgeInsets.only(right: 12, left: 20),
//                           child: Column(
//                             children: [
//                               Text(
//                                 "MP's INTERESTS",
//                                 style: TextStyle(
//                                     color: Colors.deepOrangeAccent,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: isScreenSmall ? 15 : 18),
//                               ),
//                               Container(
//                                   color:
//                                       Colors.deepOrangeAccent.withOpacity(0.2),
//                                   margin: EdgeInsets.only(
//                                       top: 20, left: 10, right: 10),
//                                   padding: EdgeInsets.only(
//                                       bottom: 2, top: 2, left: 10, right: 10),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         padding: EdgeInsets.only(right: 12),
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "GitHub",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                       Container(
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "LIVE",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://registeredinterests.azurewebsites.net/#/";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                     ],
//                                   )),
//                             ],
//                           )),
//                       Expanded(
//                         child: Container(
//                             padding: EdgeInsets.only(left: 20, right: 20),
//                             decoration: BoxDecoration(
//                                 border: Border(
//                                     left: BorderSide(
//                                         color: Colors.black, width: 0.5))),
//                             child: Theme(
//                               data: theme,
//                               child: ExpansionTile(
//                                 onExpansionChanged: (onExpansionChanged) {
//                                   print("CHANGING EXPANSESION");

//                                   setState(() {
//                                     expanded1 = !expanded1;
//                                   });
//                                 },
//                                 title: Text(
//                                   "Full stack web app for finding MP's expenses by name",
//                                   style: TextStyle(
//                                       color: Colors.deepOrangeAccent,
//                                       fontSize: 20),
//                                 ),
//                               ),
//                             )

//                             // Text(
//                             //   'HI',
//                             //   style: TextStyle(
//                             //       color: Colors.deepOrangeAccent, fontSize: 20),
//                             // )

//                             ),
//                       )
//                     ]),
//                     if (expanded1 == true)
//                       ExpandedInfo(project: "MPS INTERESTS"),
//                   ],
//                 ),
//         ),
//         //! FIRST WHITE END
// //! FIRST RIGHTY ORNGE START
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.deepOrangeAccent,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: Column(
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 child: Flex(
//                   direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Container(
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                                 height: 150,
//                                 width: 150,
//                                 margin: EdgeInsets.all(20),
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage('/images/commons.jpg'),
//                                         fit: BoxFit.fill),
//                                     borderRadius: BorderRadius.only(
//                                         bottomRight: Radius.circular(20)))),
//                             Container(
//                                 decoration: BoxDecoration(
//                                     border: Border(
//                                         left: BorderSide(
//                                             color: Colors.white, width: 0.5))),
//                                 padding: EdgeInsets.only(right: 12, left: 20),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       "NC NEWS",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: isScreenSmall ? 15 : 18),
//                                     ),
//                                     Container(
//                                         padding: EdgeInsets.only(top: 20),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               padding:
//                                                   EdgeInsets.only(right: 12),
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "GitHub",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                             Container(
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "LIVE",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://registeredinterests.azurewebsites.net/#/";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                           ],
//                                         ))
//                                   ],
//                                 )),
//                           ]),
//                     ),
//                     Flexible(
//                       fit: FlexFit.loose,
//                       child: Container(
//                           padding: EdgeInsets.only(
//                               left: 20, right: 20, top: 20, bottom: 20),
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   top: BorderSide(
//                                       color: Colors.white, width: 0.3))),
//                           child: Theme(
//                             data: theme,
//                             child: ExpansionTile(
//                               onExpansionChanged: (onExpansionChanged) {
//                                 print("CHANGING EXPANSESION");

//                                 setState(() {
//                                   expanded2 = !expanded2;
//                                 });
//                               },
//                               title: Text(
//                                 "Full stack reddit-style news site displaying articles, votes, and comments",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 20),
//                               ),
//                             ),
//                           )),
//                     ),
//                     if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         //! FIRST RIGHTY ORANGE END

//         //! FIRST LRFTY GREEN START
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.green.shade700,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: isScreenSmall
//               ? Column(children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                       Widget>[
//                     Container(
//                         height: 150,
//                         width: 150,
//                         padding: EdgeInsets.only(right: 10, left: 10),
//                         margin: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('/images/commons.jpg'),
//                                 fit: BoxFit.fill),
//                             borderRadius: BorderRadius.only(
//                                 bottomRight: Radius.circular(20)))),
//                     Container(
//                         decoration: BoxDecoration(
//                             border: Border(
//                                 left: BorderSide(
//                                     color: Colors.white, width: 0.5))),
//                         padding: EdgeInsets.only(right: 12, left: 20),
//                         child: Column(
//                           children: [
//                             Text(
//                               "YRGLSET",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: isScreenSmall ? 15 : 18),
//                             ),
//                             Container(
//                                 color: Colors.deepOrangeAccent.withOpacity(0.1),
//                                 margin: EdgeInsets.only(
//                                     top: 20, left: 10, right: 10),
//                                 padding: EdgeInsets.only(
//                                     bottom: 2, top: 2, left: 10, right: 10),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 12),
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "GitHub",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                     Container(
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "LIVE",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://registeredinterests.azurewebsites.net/#/";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                   ],
//                                 )),
//                           ],
//                         )),
//                   ]),
//                   Container(
//                       padding: EdgeInsets.only(
//                           left: 20, right: 20, top: 20, bottom: 20),
//                       decoration: BoxDecoration(
//                           border: Border(
//                               top:
//                                   BorderSide(color: Colors.white, width: 0.3))),
//                       child: Theme(
//                         data: theme,
//                         child: ExpansionTile(
//                           onExpansionChanged: (onExpansionChanged) {
//                             print("CHANGING EXPANSESION");

//                             setState(() {
//                               expanded3 = !expanded3;
//                             });
//                           },
//                           title: Text(
//                             "Full stack yearly-goal-setter web app with log-in and authentication",
//                             style: TextStyle(color: Colors.white, fontSize: 20),
//                           ),
//                         ),
//                       )),
//                   if (expanded3 == true) ExpandedInfo(project: "YRGLSET"),
//                 ])
//               : Column(
//                   children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                         Widget>[
//                       Container(
//                           height: 150,
//                           width: 150,
//                           margin: EdgeInsets.all(20),
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('/images/commons.jpg'),
//                                   fit: BoxFit.fill),
//                               borderRadius: BorderRadius.only(
//                                   bottomRight: Radius.circular(20)))),
//                       Container(
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   left: BorderSide(
//                                       color: Colors.white, width: 0.5))),
//                           padding: EdgeInsets.only(right: 12, left: 20),
//                           child: Column(
//                             children: [
//                               Text(
//                                 "YRGLSET",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: isScreenSmall ? 15 : 18),
//                               ),
//                               Container(
//                                   color:
//                                       Colors.deepOrangeAccent.withOpacity(0.1),
//                                   margin: EdgeInsets.only(
//                                       top: 20, left: 10, right: 10),
//                                   padding: EdgeInsets.only(
//                                       bottom: 2, top: 2, left: 10, right: 10),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         padding: EdgeInsets.only(right: 12),
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "GitHub",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                       Container(
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "LIVE",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://registeredinterests.azurewebsites.net/#/";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                     ],
//                                   )),
//                             ],
//                           )),
//                       Expanded(
//                         child: Container(
//                             padding: EdgeInsets.only(left: 20, right: 20),
//                             decoration: BoxDecoration(
//                                 border: Border(
//                                     left: BorderSide(
//                                         color: Colors.white, width: 0.5))),
//                             child: Theme(
//                               data: theme,
//                               child: ExpansionTile(
//                                 onExpansionChanged: (onExpansionChanged) {
//                                   print("CHANGING EXPANSESION");

//                                   setState(() {
//                                     expanded3 = !expanded3;
//                                   });
//                                 },
//                                 title: Text(
//                                   "Full stack yearly-goal-setter web app with log-in and authentication",
//                                   style: TextStyle(
//                                       color: Colors.white, fontSize: 20),
//                                 ),
//                               ),
//                             )

//                             // Text(
//                             //   'HI',
//                             //   style: TextStyle(
//                             //       color: Colors.deepOrangeAccent, fontSize: 20),
//                             // )

//                             ),
//                       )
//                     ]),
//                     if (expanded3 == true) ExpandedInfo(project: "YRGLSET"),
//                   ],
//                 ),
//         ),
//         //! FURST LEFTY GREEN END

// //! FIRST WHITE righty
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: isScreenSmall
//               ? Column(children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                       Widget>[
//                     Container(
//                         height: 150,
//                         width: 150,
//                         padding: EdgeInsets.only(right: 10, left: 10),
//                         margin: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('/images/commons.jpg'),
//                                 fit: BoxFit.fill),
//                             borderRadius: BorderRadius.only(
//                                 bottomRight: Radius.circular(20)))),
//                     Container(
//                         decoration: BoxDecoration(
//                             border: Border(
//                                 left: BorderSide(
//                                     color: Colors.black, width: 0.5))),
//                         padding: EdgeInsets.only(right: 12, left: 20),
//                         child: Column(
//                           children: [
//                             Text(
//                               "WHO'S WHERE",
//                               style: TextStyle(
//                                   color: Colors.deepOrangeAccent,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: isScreenSmall ? 15 : 18),
//                             ),
//                             Container(
//                                 padding: EdgeInsets.only(top: 20),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 12),
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "GitHub",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                     Container(
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "LIVE",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://registeredinterests.azurewebsites.net/#/";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                   ],
//                                 ))
//                           ],
//                         )),
//                   ]),
//                   Container(
//                       padding: EdgeInsets.only(
//                           left: 20, right: 20, top: 20, bottom: 20),
//                       decoration: BoxDecoration(
//                           border: Border(
//                               top:
//                                   BorderSide(color: Colors.black, width: 0.3))),
//                       child: Theme(
//                         data: theme,
//                         child: ExpansionTile(
//                           onExpansionChanged: (onExpansionChanged) {
//                             print("CHANGING EXPANSESION");

//                             setState(() {
//                               expanded4 = !expanded4;
//                             });
//                           },
//                           title: Text(
//                             "Front-end for a student admininstation system",
//                             style: TextStyle(
//                                 color: Colors.deepOrangeAccent, fontSize: 20),
//                           ),
//                         ),
//                       )),
//                   if (expanded4 == true) ExpandedInfo(project: "WHO'S WHERE"),
//                 ])
//               : Column(
//                   children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                         Widget>[
//                       Expanded(
//                         child: Container(
//                           padding: EdgeInsets.only(left: 20, right: 20),
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   right: BorderSide(
//                                       color: Colors.deepOrangeAccent,
//                                       width: 0.5))),
//                           child: Theme(
//                             data: theme,
//                             child: ExpansionTile(
//                                 onExpansionChanged: (onExpansionChanged) {
//                                   print("CHANGING EXPANSESION");

//                                   setState(() {
//                                     expanded4 = !expanded4;
//                                   });
//                                 },
//                                 title: Text(
//                                   'HI',
//                                   style: TextStyle(
//                                       color: Colors.deepOrangeAccent,
//                                       fontSize: 20),
//                                   textAlign: TextAlign.right,
//                                 )),
//                           ),
//                         ),
//                       ),
//                       Container(
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   right: BorderSide(
//                                       color: Colors.deepOrangeAccent,
//                                       width: 0.5))),
//                           padding: EdgeInsets.only(right: 12, left: 20),
//                           child: Column(
//                             children: [
//                               Text(
//                                 "WHO'S WHERE",
//                                 style: TextStyle(
//                                     color: Colors.deepOrangeAccent,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: isScreenSmall ? 15 : 18),
//                               ),
//                               Container(
//                                   padding: EdgeInsets.only(top: 20),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                           padding: EdgeInsets.only(right: 12),
//                                           child: RichText(
//                                             text: TextSpan(children: [
//                                               TextSpan(
//                                                   style: TextStyle(
//                                                       color:
//                                                           Colors.blue.shade700,
//                                                       fontSize: 15,
//                                                       fontWeight:
//                                                           FontWeight.bold),
//                                                   text: "GitHub",
//                                                   recognizer:
//                                                       TapGestureRecognizer()
//                                                         ..onTap = () async {
//                                                           var url =
//                                                               "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                           if (await canLaunch(
//                                                               url)) {
//                                                             await launch(url);
//                                                           } else {
//                                                             throw 'Could not launch $url';
//                                                           }
//                                                         }),
//                                             ]),
//                                           )),
//                                       Container(
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "LIVE",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://registeredinterests.azurewebsites.net/#/";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                     ],
//                                   ))
//                             ],
//                           )),
//                       Container(
//                           height: 150,
//                           width: 150,
//                           margin: EdgeInsets.all(20),
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('/images/commons.jpg'),
//                                   fit: BoxFit.fill),
//                               borderRadius: BorderRadius.only(
//                                   bottomRight: Radius.circular(20)))),
//                     ]),
//                     if (expanded4 == true) ExpandedInfo(project: "WHO'S WHERE"),
//                   ],
//                 ),
//         ),
// //!FIRSTY WHITE right END
// //! FIRST LEFT ORANGE START
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.deepOrangeAccent,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: isScreenSmall
//               ? Column(children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                       Widget>[
//                     Container(
//                         height: 150,
//                         width: 150,
//                         padding: EdgeInsets.only(right: 10, left: 10),
//                         margin: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('/images/commons.jpg'),
//                                 fit: BoxFit.fill),
//                             borderRadius: BorderRadius.only(
//                                 bottomRight: Radius.circular(20)))),
//                     Container(
//                         decoration: BoxDecoration(
//                             border: Border(
//                                 left: BorderSide(
//                                     color: Colors.white, width: 0.5))),
//                         padding: EdgeInsets.only(right: 12, left: 20),
//                         child: Column(
//                           children: [
//                             Text(
//                               "QUAKE DATA",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: isScreenSmall ? 15 : 18),
//                             ),
//                             Container(
//                                 padding: EdgeInsets.only(top: 20),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 12),
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "GitHub",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                     Container(
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "LIVE",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://registeredinterests.azurewebsites.net/#/";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                   ],
//                                 ))
//                           ],
//                         )),
//                   ]),
//                   Container(
//                       padding: EdgeInsets.only(
//                           left: 20, right: 20, top: 20, bottom: 20),
//                       decoration: BoxDecoration(
//                           border: Border(
//                               top:
//                                   BorderSide(color: Colors.white, width: 0.3))),
//                       child: Theme(
//                         data: theme,
//                         child: ExpansionTile(
//                           onExpansionChanged: (onExpansionChanged) {
//                             print("CHANGING EXPANSESION");

//                             setState(() {
//                               expanded5 = !expanded5;
//                             });
//                           },
//                           title: Text(
//                             "Full stack web app for finding MP's registered interests by name",
//                             style: TextStyle(color: Colors.white, fontSize: 20),
//                           ),
//                         ),
//                       )),
//                   if (expanded5 == true) ExpandedInfo(project: "QUAKE DATA"),
//                 ])
//               : Column(
//                   children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                         Widget>[
//                       Container(
//                           height: 150,
//                           width: 150,
//                           margin: EdgeInsets.all(20),
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('/images/commons.jpg'),
//                                   fit: BoxFit.fill),
//                               borderRadius: BorderRadius.only(
//                                   bottomRight: Radius.circular(20)))),
//                       Container(
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   left: BorderSide(
//                                       color: Colors.white, width: 0.5))),
//                           padding: EdgeInsets.only(right: 12, left: 20),
//                           child: Column(
//                             children: [
//                               Text(
//                                 "QUAKE DATA",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: isScreenSmall ? 15 : 18),
//                               ),
//                               Container(
//                                   padding: EdgeInsets.only(top: 20),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         padding: EdgeInsets.only(right: 12),
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "GitHub",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                       Container(
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "LIVE",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://registeredinterests.azurewebsites.net/#/";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                     ],
//                                   ))
//                             ],
//                           )),
//                       Expanded(
//                         child: Container(
//                             padding: EdgeInsets.only(left: 20, right: 20),
//                             decoration: BoxDecoration(
//                                 border: Border(
//                                     left: BorderSide(
//                                         color: Colors.white, width: 0.5))),
//                             child: Theme(
//                               data: theme,
//                               child: ExpansionTile(
//                                 onExpansionChanged: (onExpansionChanged) {
//                                   print("CHANGING EXPANSESION");

//                                   setState(() {
//                                     expanded5 = !expanded5;
//                                   });
//                                 },
//                                 title: Text(
//                                   "Full stack web app for finding MP's expenses by name",
//                                   style: TextStyle(
//                                       color: Colors.white, fontSize: 20),
//                                 ),
//                               ),
//                             )

//                             // Text(
//                             //   'HI',
//                             //   style: TextStyle(
//                             //       color: Colors.deepOrangeAccent, fontSize: 20),
//                             // )

//                             ),
//                       )
//                     ]),
//                     if (expanded5 == true) ExpandedInfo(project: "QUAKE DATA"),
//                   ],
//                 ),
//         ),
// //! FURSR LEFT ORANGE END
// //! FIRST RIGHT GREEN
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.green.shade700,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: isScreenSmall
//               ? Column(children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                       Widget>[
//                     Container(
//                         height: 150,
//                         width: 150,
//                         padding: EdgeInsets.only(right: 10, left: 10),
//                         margin: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('/images/commons.jpg'),
//                                 fit: BoxFit.fill),
//                             borderRadius: BorderRadius.only(
//                                 bottomRight: Radius.circular(20)))),
//                     Container(
//                         decoration: BoxDecoration(
//                             border: Border(
//                                 left: BorderSide(
//                                     color: Colors.white, width: 0.5))),
//                         padding: EdgeInsets.only(right: 12, left: 20),
//                         child: Column(
//                           children: [
//                             Text(
//                               "MP's INTERESTS",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: isScreenSmall ? 15 : 18),
//                             ),
//                             Container(
//                                 padding: EdgeInsets.only(top: 20),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 12),
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "GitHub",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                     Container(
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "LIVE",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://registeredinterests.azurewebsites.net/#/";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                   ],
//                                 ))
//                           ],
//                         )),
//                   ]),
//                   Container(
//                       padding: EdgeInsets.only(
//                           left: 20, right: 20, top: 20, bottom: 20),
//                       decoration: BoxDecoration(
//                           border: Border(
//                               top:
//                                   BorderSide(color: Colors.white, width: 0.3))),
//                       child: Theme(
//                         data: theme,
//                         child: ExpansionTile(
//                           onExpansionChanged: (onExpansionChanged) {
//                             print("CHANGING EXPANSESION");

//                             setState(() {
//                               expanded6 = !expanded6;
//                             });
//                           },
//                           title: Text(
//                             "Full stack web app for finding MP's expenses by name",
//                             style: TextStyle(color: Colors.white, fontSize: 20),
//                           ),
//                         ),
//                       )),
//                   if (expanded6 == true) ExpandedInfo(project: "MPS INTERESTS"),
//                 ])
//               : Column(
//                   children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                         Widget>[
//                       Expanded(
//                         child: Container(
//                           padding: EdgeInsets.only(left: 20, right: 20),
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   right: BorderSide(
//                                       color: Colors.white, width: 0.5))),
//                           child: Theme(
//                             data: theme,
//                             child: ExpansionTile(
//                                 onExpansionChanged: (onExpansionChanged) {
//                                   print("CHANGING EXPANSESION");

//                                   setState(() {
//                                     expanded6 = !expanded6;
//                                   });
//                                 },
//                                 title: Text(
//                                   'HI',
//                                   style: TextStyle(
//                                       color: Colors.white, fontSize: 20),
//                                   textAlign: TextAlign.right,
//                                 )),
//                           ),
//                         ),
//                       ),
//                       Container(
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   right: BorderSide(
//                                       color: Colors.white, width: 0.5))),
//                           padding: EdgeInsets.only(right: 12, left: 20),
//                           child: Column(
//                             children: [
//                               Text(
//                                 "MP's INTERESTS",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: isScreenSmall ? 15 : 18),
//                               ),
//                               Container(
//                                   padding: EdgeInsets.only(top: 20),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                           padding: EdgeInsets.only(right: 12),
//                                           child: RichText(
//                                             text: TextSpan(children: [
//                                               TextSpan(
//                                                   style: TextStyle(
//                                                       color:
//                                                           Colors.blue.shade700,
//                                                       fontSize: 15,
//                                                       fontWeight:
//                                                           FontWeight.bold),
//                                                   text: "GitHub",
//                                                   recognizer:
//                                                       TapGestureRecognizer()
//                                                         ..onTap = () async {
//                                                           var url =
//                                                               "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                           if (await canLaunch(
//                                                               url)) {
//                                                             await launch(url);
//                                                           } else {
//                                                             throw 'Could not launch $url';
//                                                           }
//                                                         }),
//                                             ]),
//                                           )),
//                                       Container(
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "LIVE",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://registeredinterests.azurewebsites.net/#/";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                     ],
//                                   ))
//                             ],
//                           )),
//                       Container(
//                           height: 150,
//                           width: 150,
//                           margin: EdgeInsets.all(20),
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('/images/commons.jpg'),
//                                   fit: BoxFit.fill),
//                               borderRadius: BorderRadius.only(
//                                   bottomRight: Radius.circular(20)))),
//                     ]),
//                     if (expanded6 == true)
//                       ExpandedInfo(project: "MPS INTERESTS"),
//                   ],
//                 ),
//         ),
// //! FIRST RIGHT GREEN END
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: isScreenSmall
//               ? Column(children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                       Widget>[
//                     Container(
//                         height: 150,
//                         width: 150,
//                         padding: EdgeInsets.only(right: 10, left: 10),
//                         margin: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('/images/commons.jpg'),
//                                 fit: BoxFit.fill),
//                             borderRadius: BorderRadius.only(
//                                 bottomRight: Radius.circular(20)))),
//                     Container(
//                         decoration: BoxDecoration(
//                             border: Border(
//                                 left: BorderSide(
//                                     color: Colors.black, width: 0.5))),
//                         padding: EdgeInsets.only(right: 12, left: 20),
//                         child: Column(
//                           children: [
//                             Text(
//                               "MP's INTERESTS",
//                               style: TextStyle(
//                                   color: Colors.deepOrangeAccent,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: isScreenSmall ? 15 : 18),
//                             ),
//                             Container(
//                                 padding: EdgeInsets.only(top: 20),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 12),
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "GitHub",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                     Container(
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "LIVE",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://registeredinterests.azurewebsites.net/#/";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                   ],
//                                 ))
//                           ],
//                         )),
//                   ]),
//                   Container(
//                       padding: EdgeInsets.only(
//                           left: 20, right: 20, top: 20, bottom: 20),
//                       decoration: BoxDecoration(
//                           border: Border(
//                               top: BorderSide(
//                                   color: Colors.deepOrangeAccent, width: 0.3))),
//                       child: Theme(
//                         data: theme,
//                         child: ExpansionTile(
//                           onExpansionChanged: (onExpansionChanged) {
//                             print("CHANGING EXPANSESION");

//                             setState(() {
//                               expanded7 = !expanded7;
//                             });
//                           },
//                           title: Text(
//                             "Full stack web app for finding MP's registered interests by name",
//                             style: TextStyle(
//                                 color: Colors.deepOrangeAccent, fontSize: 20),
//                           ),
//                         ),
//                       )),
//                   if (expanded7 == true) ExpandedInfo(project: "MPS INTERESTS"),
//                 ])
//               : Column(
//                   children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                         Widget>[
//                       Container(
//                           height: 150,
//                           width: 150,
//                           margin: EdgeInsets.all(20),
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('/images/commons.jpg'),
//                                   fit: BoxFit.fill),
//                               borderRadius: BorderRadius.only(
//                                   bottomRight: Radius.circular(20)))),
//                       Container(
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   left: BorderSide(
//                                       color: Colors.black, width: 0.5))),
//                           padding: EdgeInsets.only(right: 12, left: 20),
//                           child: Column(
//                             children: [
//                               Text(
//                                 "MP's INTERESTS",
//                                 style: TextStyle(
//                                     color: Colors.deepOrangeAccent,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: isScreenSmall ? 15 : 18),
//                               ),
//                               Container(
//                                   padding: EdgeInsets.only(top: 20),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         padding: EdgeInsets.only(right: 12),
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "GitHub",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                       Container(
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "LIVE",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://registeredinterests.azurewebsites.net/#/";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                     ],
//                                   ))
//                             ],
//                           )),
//                       Expanded(
//                         child: Container(
//                             padding: EdgeInsets.only(left: 20, right: 20),
//                             decoration: BoxDecoration(
//                                 border: Border(
//                                     left: BorderSide(
//                                         color: Colors.black, width: 0.5))),
//                             child: Theme(
//                               data: theme,
//                               child: ExpansionTile(
//                                 onExpansionChanged: (onExpansionChanged) {
//                                   print("CHANGING EXPANSESION");

//                                   setState(() {
//                                     expanded7 = !expanded7;
//                                   });
//                                 },
//                                 title: Text(
//                                   "Full stack web app for finding MP's expenses by name",
//                                   style: TextStyle(
//                                       color: Colors.deepOrangeAccent,
//                                       fontSize: 20),
//                                 ),
//                               ),
//                             )

//                             // Text(
//                             //   'HI',
//                             //   style: TextStyle(
//                             //       color: Colors.deepOrangeAccent, fontSize: 20),
//                             // )

//                             ),
//                       )
//                     ]),
//                     if (expanded7 == true)
//                       ExpandedInfo(project: "MPS INTERESTS"),
//                   ],
//                 ),
//         ),

//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.deepOrangeAccent,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: isScreenSmall
//               ? Column(children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                       Widget>[
//                     Container(
//                         height: 150,
//                         width: 150,
//                         padding: EdgeInsets.only(right: 10, left: 10),
//                         margin: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('/images/commons.jpg'),
//                                 fit: BoxFit.fill),
//                             borderRadius: BorderRadius.only(
//                                 bottomRight: Radius.circular(20)))),
//                     Container(
//                         decoration: BoxDecoration(
//                             border: Border(
//                                 left: BorderSide(
//                                     color: Colors.white, width: 0.5))),
//                         padding: EdgeInsets.only(right: 12, left: 20),
//                         child: Column(
//                           children: [
//                             Text(
//                               "MP's INTERESTS",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: isScreenSmall ? 15 : 18),
//                             ),
//                             Container(
//                                 padding: EdgeInsets.only(top: 20),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 12),
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "GitHub",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                     Container(
//                                       child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                   color: Colors.blue.shade700,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                               text: "LIVE",
//                                               recognizer: TapGestureRecognizer()
//                                                 ..onTap = () async {
//                                                   var url =
//                                                       "https://registeredinterests.azurewebsites.net/#/";
//                                                   if (await canLaunch(url)) {
//                                                     await launch(url);
//                                                   } else {
//                                                     throw 'Could not launch $url';
//                                                   }
//                                                 }),
//                                         ]),
//                                       ),

//                                       // Text("GitHub",
//                                       //     style: TextStyle(
//                                       //         color: Colors.deepOrangeAccent,
//                                       //         fontSize: 15))
//                                     ),
//                                   ],
//                                 ))
//                           ],
//                         )),
//                   ]),
//                   Container(
//                       padding: EdgeInsets.only(
//                           left: 20, right: 20, top: 20, bottom: 20),
//                       decoration: BoxDecoration(
//                           border: Border(
//                               top:
//                                   BorderSide(color: Colors.white, width: 0.3))),
//                       child: Theme(
//                         data: theme,
//                         child: ExpansionTile(
//                           onExpansionChanged: (onExpansionChanged) {
//                             print("CHANGING EXPANSESION");

//                             setState(() {
//                               expanded8 = !expanded8;
//                             });
//                           },
//                           title: Text(
//                             "Full stack web app for finding MP's expenses by name",
//                             style: TextStyle(color: Colors.white, fontSize: 20),
//                           ),
//                         ),
//                       )),
//                   if (expanded8 == true) ExpandedInfo(project: "MPS INTERESTS"),
//                 ])
//               : Column(
//                   children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: <
//                         Widget>[
//                       Expanded(
//                         child: Container(
//                           padding: EdgeInsets.only(left: 20, right: 20),
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   right: BorderSide(
//                                       color: Colors.white, width: 0.5))),
//                           child: Theme(
//                             data: theme,
//                             child: ExpansionTile(
//                                 onExpansionChanged: (onExpansionChanged) {
//                                   print("CHANGING EXPANSESION");

//                                   setState(() {
//                                     expanded8 = !expanded8;
//                                   });
//                                 },
//                                 title: Text(
//                                   'HI',
//                                   style: TextStyle(
//                                       color: Colors.white, fontSize: 20),
//                                   textAlign: TextAlign.right,
//                                 )),
//                           ),
//                         ),
//                       ),
//                       Container(
//                           decoration: BoxDecoration(
//                               border: Border(
//                                   right: BorderSide(
//                                       color: Colors.white, width: 0.5))),
//                           padding: EdgeInsets.only(right: 12, left: 20),
//                           child: Column(
//                             children: [
//                               Text(
//                                 "MP's INTERESTS",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: isScreenSmall ? 15 : 18),
//                               ),
//                               Container(
//                                   padding: EdgeInsets.only(top: 20),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                           padding: EdgeInsets.only(right: 12),
//                                           child: RichText(
//                                             text: TextSpan(children: [
//                                               TextSpan(
//                                                   style: TextStyle(
//                                                       color:
//                                                           Colors.blue.shade700,
//                                                       fontSize: 15,
//                                                       fontWeight:
//                                                           FontWeight.bold),
//                                                   text: "GitHub",
//                                                   recognizer:
//                                                       TapGestureRecognizer()
//                                                         ..onTap = () async {
//                                                           var url =
//                                                               "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                           if (await canLaunch(
//                                                               url)) {
//                                                             await launch(url);
//                                                           } else {
//                                                             throw 'Could not launch $url';
//                                                           }
//                                                         }),
//                                             ]),
//                                           )),
//                                       Container(
//                                         child: RichText(
//                                           text: TextSpan(children: [
//                                             TextSpan(
//                                                 style: TextStyle(
//                                                     color: Colors.blue.shade700,
//                                                     fontSize: 15,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                                 text: "LIVE",
//                                                 recognizer:
//                                                     TapGestureRecognizer()
//                                                       ..onTap = () async {
//                                                         var url =
//                                                             "https://registeredinterests.azurewebsites.net/#/";
//                                                         if (await canLaunch(
//                                                             url)) {
//                                                           await launch(url);
//                                                         } else {
//                                                           throw 'Could not launch $url';
//                                                         }
//                                                       }),
//                                           ]),
//                                         ),

//                                         // Text("GitHub",
//                                         //     style: TextStyle(
//                                         //         color: Colors.deepOrangeAccent,
//                                         //         fontSize: 15))
//                                       ),
//                                     ],
//                                   ))
//                             ],
//                           )),
//                       Container(
//                           height: 150,
//                           width: 150,
//                           margin: EdgeInsets.all(20),
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('/images/commons.jpg'),
//                                   fit: BoxFit.fill),
//                               borderRadius: BorderRadius.only(
//                                   bottomRight: Radius.circular(20)))),
//                     ]),
//                     if (expanded8 == true)
//                       ExpandedInfo(project: "MPS INTERESTS"),
//                   ],
//                 ),
//         ),

// //! GREEN RIGHTY
//         Container(
//           margin: EdgeInsets.only(
//             top: 50,
//             bottom: 20,
//             left: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//             right: isScreenSmall || isScreenInbetween
//                 ? 20
//                 : isScreenMedium
//                     ? 100
//                     : 200,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.green.shade700,
//               borderRadius:
//                   BorderRadius.only(bottomRight: Radius.circular(20.0))),
//           child: Column(
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 child: Flex(
//                     direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
//                     // mainAxisAlignment: MainAxisAlignment.center,
//                     // crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                                 height: 150,
//                                 width: 150,
//                                 margin: EdgeInsets.all(20),
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage('/images/commons.jpg'),
//                                         fit: BoxFit.fill),
//                                     borderRadius: BorderRadius.only(
//                                         bottomRight: Radius.circular(20)))),
//                             Container(
//                                 decoration: BoxDecoration(
//                                     border: Border(
//                                         left: BorderSide(
//                                             color: Colors.white, width: 0.5))),
//                                 padding: EdgeInsets.only(right: 12, left: 20),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       "MP's INTERESTS",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: isScreenSmall ? 15 : 18),
//                                     ),
//                                     Container(
//                                         padding: EdgeInsets.only(top: 20),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               padding:
//                                                   EdgeInsets.only(right: 12),
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "GitHub",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                             Container(
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       style: TextStyle(
//                                                           color: Colors
//                                                               .blue.shade700,
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.bold),
//                                                       text: "LIVE",
//                                                       recognizer:
//                                                           TapGestureRecognizer()
//                                                             ..onTap = () async {
//                                                               var url =
//                                                                   "https://registeredinterests.azurewebsites.net/#/";
//                                                               if (await canLaunch(
//                                                                   url)) {
//                                                                 await launch(
//                                                                     url);
//                                                               } else {
//                                                                 throw 'Could not launch $url';
//                                                               }
//                                                             }),
//                                                 ]),
//                                               ),

//                                               // Text("GitHub",
//                                               //     style: TextStyle(
//                                               //         color: Colors.deepOrangeAccent,
//                                               //         fontSize: 15))
//                                             ),
//                                           ],
//                                         ))
//                                   ],
//                                 )),
//                           ],
//                         ),
//                       ),
//                       Flexible(
//                         fit: FlexFit.loose,
//                         child: Container(
//                             padding: EdgeInsets.only(
//                                 left: 20, right: 20, bottom: 20),
//                             decoration: BoxDecoration(
//                                 border: Border(
//                                     left: BorderSide(
//                                         color: Colors.white, width: 0.5))),
//                             child: Theme(
//                               data: theme,
//                               child: ExpansionTile(
//                                 onExpansionChanged: (onExpansionChanged) {
//                                   print("CHANGING EXPANSESION");

//                                   setState(() {
//                                     expanded9 = !expanded9;
//                                   });
//                                 },
//                                 title: Text(
//                                   "Full stack web app for finding MP's expenses by name",
//                                   style: TextStyle(
//                                       color: Colors.white, fontSize: 20),
//                                 ),
//                               ),
//                             )

//                             // Text(
//                             //   'HI',
//                             //   style: TextStyle(
//                             //       color: Colors.deepOrangeAccent, fontSize: 20),
//                             // )

//                             ),
//                       )
//                     ]),
//               ),
//               if (expanded9 == true) ExpandedInfo(project: "MPS INTERESTS"),
//             ],
//           ),
//         ),
//! GREEN RIGHT END
/*
//! GREEN RIGHTY
        Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 20,
            left: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
            right: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
          ),
          decoration: BoxDecoration(
              color: Colors.green.shade700,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20.0))),
          child: isScreenSmall
              ? Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                      Widget>[
                    Container(
                        height: 150,
                        width: 150,
                        padding: EdgeInsets.only(right: 10, left: 10),
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('/images/commons.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20)))),
                    Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Colors.white, width: 0.5))),
                        padding: EdgeInsets.only(right: 12, left: 20),
                        child: Column(
                          children: [
                            Text(
                              "MP's INTERESTS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: isScreenSmall ? 15 : 18),
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 12),
                                      child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              style: TextStyle(
                                                  color: Colors.blue.shade700,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                              text: "GitHub",
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  var url =
                                                      "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
                                                  if (await canLaunch(url)) {
                                                    await launch(url);
                                                  } else {
                                                    throw 'Could not launch $url';
                                                  }
                                                }),
                                        ]),
                                      ),

                                      // Text("GitHub",
                                      //     style: TextStyle(
                                      //         color: Colors.deepOrangeAccent,
                                      //         fontSize: 15))
                                    ),
                                    Container(
                                      child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              style: TextStyle(
                                                  color: Colors.blue.shade700,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                              text: "LIVE",
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  var url =
                                                      "https://registeredinterests.azurewebsites.net/#/";
                                                  if (await canLaunch(url)) {
                                                    await launch(url);
                                                  } else {
                                                    throw 'Could not launch $url';
                                                  }
                                                }),
                                        ]),
                                      ),

                                      // Text("GitHub",
                                      //     style: TextStyle(
                                      //         color: Colors.deepOrangeAccent,
                                      //         fontSize: 15))
                                    ),
                                  ],
                                ))
                          ],
                        )),
                  ]),
                  Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 20),
                      decoration: BoxDecoration(
                          border: Border(
                              top:
                                  BorderSide(color: Colors.white, width: 0.3))),
                      child: Theme(
                        data: theme,
                        child: ExpansionTile(
                          onExpansionChanged: (onExpansionChanged) {
                            print("CHANGING EXPANSESION");

                            setState(() {
                              expanded9 = !expanded9;
                            });
                          },
                          title: Text(
                            "Full stack web app for finding MP's registered interests by name",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )),
                  if (expanded9 == true) ExpandedInfo(project: "MPS INTERESTS"),
                ])
              : Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                        Widget>[
                      Container(
                          height: 150,
                          width: 150,
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('/images/commons.jpg'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20)))),
                      Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: Colors.white, width: 0.5))),
                          padding: EdgeInsets.only(right: 12, left: 20),
                          child: Column(
                            children: [
                              Text(
                                "MP's INTERESTS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: isScreenSmall ? 15 : 18),
                              ),
                              Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(right: 12),
                                        child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                style: TextStyle(
                                                    color: Colors.blue.shade700,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                text: "GitHub",
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        var url =
                                                            "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(url);
                                                        } else {
                                                          throw 'Could not launch $url';
                                                        }
                                                      }),
                                          ]),
                                        ),

                                        // Text("GitHub",
                                        //     style: TextStyle(
                                        //         color: Colors.deepOrangeAccent,
                                        //         fontSize: 15))
                                      ),
                                      Container(
                                        child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                style: TextStyle(
                                                    color: Colors.blue.shade700,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                text: "LIVE",
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        var url =
                                                            "https://registeredinterests.azurewebsites.net/#/";
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(url);
                                                        } else {
                                                          throw 'Could not launch $url';
                                                        }
                                                      }),
                                          ]),
                                        ),

                                        // Text("GitHub",
                                        //     style: TextStyle(
                                        //         color: Colors.deepOrangeAccent,
                                        //         fontSize: 15))
                                      ),
                                    ],
                                  ))
                            ],
                          )),
                      Expanded(
                        child: Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.white, width: 0.5))),
                            child: Theme(
                              data: theme,
                              child: ExpansionTile(
                                onExpansionChanged: (onExpansionChanged) {
                                  print("CHANGING EXPANSESION");

                                  setState(() {
                                    expanded9 = !expanded9;
                                  });
                                },
                                title: Text(
                                  "Full stack web app for finding MP's expenses by name",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            )

                            // Text(
                            //   'HI',
                            //   style: TextStyle(
                            //       color: Colors.deepOrangeAccent, fontSize: 20),
                            // )

                            ),
                      )
                    ]),
                    if (expanded9 == true)
                      ExpandedInfo(project: "MPS INTERESTS"),
                  ],
                ),
        ),
//! GREEN RIGHT END
*/
        Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 20,
            left: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
            right: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
          ),
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20.0))),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Flex(
                  direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('/images/commons.jpg'),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20)))),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.white, width: 0.5))),
                                padding: EdgeInsets.only(right: 12, left: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      "NC NEWS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: isScreenSmall ? 15 : 18),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 12),
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "GitHub",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                            Container(
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "LIVE",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://registeredinterests.azurewebsites.net/#/";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                          ],
                                        ))
                                  ],
                                )),
                          ]),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.white, width: 0.3))),
                          child: Theme(
                            data: theme,
                            child: ExpansionTile(
                              onExpansionChanged: (onExpansionChanged) {
                                print("CHANGING EXPANSESION");

                                setState(() {
                                  expanded2 = !expanded2;
                                });
                              },
                              title: Text(
                                "Full stack reddit-style news site displaying articles, votes, and comments",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          )),
                    ),
                    if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 20,
            left: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
            right: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
          ),
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20.0))),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Flex(
                  direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('/images/commons.jpg'),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20)))),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.white, width: 0.5))),
                                padding: EdgeInsets.only(right: 12, left: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      "NC NEWS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: isScreenSmall ? 15 : 18),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 12),
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "GitHub",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                            Container(
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "LIVE",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://registeredinterests.azurewebsites.net/#/";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                          ],
                                        ))
                                  ],
                                )),
                          ]),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.white, width: 0.3))),
                          child: Theme(
                            data: theme,
                            child: ExpansionTile(
                              onExpansionChanged: (onExpansionChanged) {
                                print("CHANGING EXPANSESION");

                                setState(() {
                                  expanded2 = !expanded2;
                                });
                              },
                              title: Text(
                                "Full stack reddit-style news site displaying articles, votes, and comments",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          )),
                    ),
                    if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 20,
            left: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
            right: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
          ),
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20.0))),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Flex(
                  direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('/images/commons.jpg'),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20)))),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.white, width: 0.5))),
                                padding: EdgeInsets.only(right: 12, left: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      "NC NEWS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: isScreenSmall ? 15 : 18),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 12),
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "GitHub",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                            Container(
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "LIVE",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://registeredinterests.azurewebsites.net/#/";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                          ],
                                        ))
                                  ],
                                )),
                          ]),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.white, width: 0.3))),
                          child: Theme(
                            data: theme,
                            child: ExpansionTile(
                              onExpansionChanged: (onExpansionChanged) {
                                print("CHANGING EXPANSESION");

                                setState(() {
                                  expanded2 = !expanded2;
                                });
                              },
                              title: Text(
                                "Full stack reddit-style news site displaying articles, votes, and comments",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          )),
                    ),
                    if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 20,
            left: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
            right: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
          ),
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20.0))),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Flex(
                  direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('/images/commons.jpg'),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20)))),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.white, width: 0.5))),
                                padding: EdgeInsets.only(right: 12, left: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      "NC NEWS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: isScreenSmall ? 15 : 18),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 12),
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "GitHub",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                            Container(
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "LIVE",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://registeredinterests.azurewebsites.net/#/";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                          ],
                                        ))
                                  ],
                                )),
                          ]),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.white, width: 0.3))),
                          child: Theme(
                            data: theme,
                            child: ExpansionTile(
                              onExpansionChanged: (onExpansionChanged) {
                                print("CHANGING EXPANSESION");

                                setState(() {
                                  expanded2 = !expanded2;
                                });
                              },
                              title: Text(
                                "Full stack reddit-style news site displaying articles, votes, and comments",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          )),
                    ),
                    if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 20,
            left: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
            right: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
          ),
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20.0))),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Flex(
                  direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('/images/commons.jpg'),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20)))),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.white, width: 0.5))),
                                padding: EdgeInsets.only(right: 12, left: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      "NC NEWS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: isScreenSmall ? 15 : 18),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 12),
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "GitHub",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                            Container(
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "LIVE",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://registeredinterests.azurewebsites.net/#/";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                          ],
                                        ))
                                  ],
                                )),
                          ]),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.white, width: 0.3))),
                          child: Theme(
                            data: theme,
                            child: ExpansionTile(
                              onExpansionChanged: (onExpansionChanged) {
                                print("CHANGING EXPANSESION");

                                setState(() {
                                  expanded2 = !expanded2;
                                });
                              },
                              title: Text(
                                "Full stack reddit-style news site displaying articles, votes, and comments",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          )),
                    ),
                    if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 20,
            left: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
            right: isScreenSmall || isScreenInbetween
                ? 20
                : isScreenMedium
                    ? 100
                    : 200,
          ),
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20.0))),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Flex(
                  direction: isScreenSmall ? Axis.vertical : Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('/images/commons.jpg'),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20)))),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.white, width: 0.5))),
                                padding: EdgeInsets.only(right: 12, left: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      "NC NEWS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: isScreenSmall ? 15 : 18),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 12),
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "GitHub",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://github.com/raymondfdavey/reg-interests-flutter-via-node";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                            Container(
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade700,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      text: "LIVE",
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () async {
                                                              var url =
                                                                  "https://registeredinterests.azurewebsites.net/#/";
                                                              if (await canLaunch(
                                                                  url)) {
                                                                await launch(
                                                                    url);
                                                              } else {
                                                                throw 'Could not launch $url';
                                                              }
                                                            }),
                                                ]),
                                              ),

                                              // Text("GitHub",
                                              //     style: TextStyle(
                                              //         color: Colors.deepOrangeAccent,
                                              //         fontSize: 15))
                                            ),
                                          ],
                                        ))
                                  ],
                                )),
                          ]),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.white, width: 0.3))),
                          child: Theme(
                            data: theme,
                            child: ExpansionTile(
                              onExpansionChanged: (onExpansionChanged) {
                                print("CHANGING EXPANSESION");

                                setState(() {
                                  expanded2 = !expanded2;
                                });
                              },
                              title: Text(
                                "Full stack reddit-style news site displaying articles, votes, and comments",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          )),
                    ),
                    if (expanded2 == true) ExpandedInfo(project: "NC NEWS"),
                  ],
                ),
              ),
            ],
          ),
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
        )
      ],
    );
  }
}
