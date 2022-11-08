import 'dart:ui';
import 'package:flutter/material.dart';

class Screen_Solo extends StatefulWidget {
  const Screen_Solo({super.key});

  @override
  State<Screen_Solo> createState() => _MyScreenChooseLevel();
}

class _MyScreenChooseLevel extends State<Screen_Solo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/background-home.png"),
        fit: BoxFit.fill,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(top: 120)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                Padding(padding: EdgeInsets.only(top: 40)),
                Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: [Color(0xfff32e20), Color(0xff171717)],
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                        )),
                    child: Center()),
                Padding(padding: EdgeInsets.only(top: 50)),
                Container(
                    width: MediaQuery.of(context).size.width / 2.6,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffff6633CC).withOpacity(0.7)),
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                            Text(
                              'Point: 198',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                            Text(
                              'Rank: 1000',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                          ]),
                    )),
              ]),
              Container(
                  margin: EdgeInsets.only(top: 70),
                  child: Text('VS',
                      style:
                          TextStyle(fontSize: 40, color: Colors.cyanAccent))),
              Column(children: [
                Padding(padding: EdgeInsets.only(top: 40)),
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  height: 70,
                  child: Image(image: AssetImage('assets/add-user.png')),
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                Container(
                    width: MediaQuery.of(context).size.width / 2.6,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffff6633CC).withOpacity(0.7)),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                            Text(
                              'Point: 198',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                            Text(
                              'Rank: 1000',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                          ]),
                    )),
              ])
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 187, 133, 222).withOpacity(0.6)),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Topic',
                    style: TextStyle(fontSize: 30, color: Colors.cyan),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Text('Grade 9 math',
                      style: TextStyle(fontSize: 25, color: Colors.cyan))
                ],
              ))),
          Container(
              margin: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width / 3,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 6, 171, 53),
                      Color.fromARGB(255, 224, 193, 193)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment(2, 0.5),
                  )),
              child: Center(
                child: Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 26,
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                height: 50,
                width: 50,
                child: Image(image: AssetImage('assets/reply-message.png')),
              ))
        ],
      ),
    );
  }
}
