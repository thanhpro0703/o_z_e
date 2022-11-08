import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Screen_Team extends StatefulWidget {
  const Screen_Team({super.key});

  @override
  State<Screen_Team> createState() => _MyScreen_Team();
}

class _MyScreen_Team extends State<Screen_Team> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/background-home.png"),
          fit: BoxFit.fill,
        )),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width / 7)),
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
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffff6633CC).withOpacity(0.7)),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.cyanAccent, fontSize: 17),
                            ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Text('Rank: 360',
                                style: TextStyle(
                                    color: Colors.cyanAccent, fontSize: 17))
                          ],
                        )),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Container(
                        width: MediaQuery.of(context).size.width / 7,
                        height: 60,
                        child: Image(image: AssetImage('assets/add-user.png')),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffff6633CC).withOpacity(0.7)),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.cyanAccent, fontSize: 17),
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Text('Rank: 360',
                                style: TextStyle(
                                    color: Colors.cyanAccent, fontSize: 17))
                          ],
                        )),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Container(
                        width: MediaQuery.of(context).size.width / 7,
                        height: 60,
                        child: Image(image: AssetImage('assets/add-user.png')),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffff6633CC).withOpacity(0.7)),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.cyanAccent, fontSize: 17),
                            ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Text('Rank: 360',
                                style: TextStyle(
                                    color: Colors.cyanAccent, fontSize: 17))
                          ],
                        )),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 270),
                      ),
                      Text('VS')
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width / 7)),
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
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffff6633CC).withOpacity(0.7)),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.cyanAccent, fontSize: 17),
                            ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Text('Rank: 360',
                                style: TextStyle(
                                    color: Colors.cyanAccent, fontSize: 17))
                          ],
                        )),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Container(
                        width: MediaQuery.of(context).size.width / 7,
                        height: 60,
                        child: Image(image: AssetImage('assets/add-user.png')),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffff6633CC).withOpacity(0.7)),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.cyanAccent, fontSize: 17),
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Text('Rank: 360',
                                style: TextStyle(
                                    color: Colors.cyanAccent, fontSize: 17))
                          ],
                        )),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Container(
                        width: MediaQuery.of(context).size.width / 7,
                        height: 60,
                        child: Image(image: AssetImage('assets/add-user.png')),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffff6633CC).withOpacity(0.7)),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.cyanAccent, fontSize: 17),
                            ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Text('Rank: 360',
                                style: TextStyle(
                                    color: Colors.cyanAccent, fontSize: 17))
                          ],
                        )),
                      ),
                    ],
                  )),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 40),
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.width / 3.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffff6633CC).withOpacity(0.7)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Topic',
                      style: TextStyle(fontSize: 40, color: Colors.cyanAccent)),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text('9th grade math',
                      style: TextStyle(fontSize: 17, color: Colors.cyanAccent))
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width / 2.5,
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
              child: Container(
            height: 50,
            width: 50,
            child: Image(image: AssetImage('assets/reply-message.png')),
          ))
        ]));
  }
}
