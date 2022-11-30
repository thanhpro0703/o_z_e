import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:game_app/screen_choose_level/screen_choose_level.dart';
import 'package:game_app/screen_playgame/screen_playgame.dart';
import '../screen_maingame/screen_maingame.dart';

class Screen_Solo extends StatefulWidget {
  const Screen_Solo({super.key});

  @override
  State<Screen_Solo> createState() => _MyScreenSolo();
}

class _MyScreenSolo extends State<Screen_Solo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/background-home.png"),
          fit: BoxFit.fill,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(margin: EdgeInsets.only(top: 70)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent),
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xfff32e20),
                                Color.fromARGB(200, 0, 0, 0)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            )),
                        child: Center(
                            child: Image.asset(
                          'assets/account.png',
                          width: 45,
                          height: 50,
                        )),
                      )),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: MediaQuery.of(context).size.width / 3.5,
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
                                    fontSize: 12),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text(
                                'Point: 198',
                                style: TextStyle(
                                    color: Colors.cyanAccent.withOpacity(0.8),
                                    fontSize: 12),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text(
                                'Rank: 1000',
                                style: TextStyle(
                                    color: Colors.cyanAccent.withOpacity(0.8),
                                    fontSize: 12),
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
                  Padding(padding: EdgeInsets.only(top: 50)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent),
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.width / 6,
                        child: Image(image: AssetImage('assets/add-user.png')),
                      )),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: MediaQuery.of(context).size.width / 3.5,
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
                                    fontSize: 12),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text(
                                'Point: 198',
                                style: TextStyle(
                                    color: Colors.cyanAccent.withOpacity(0.8),
                                    fontSize: 12),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text(
                                'Rank: 1000',
                                style: TextStyle(
                                    color: Colors.cyanAccent.withOpacity(0.8),
                                    fontSize: 12),
                              ),
                            ]),
                      )),
                ])
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: (MediaQuery.of(context).size.width / 4.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 187, 133, 222).withOpacity(0.6)),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Topic',
                      style: TextStyle(fontSize: 20, color: Colors.cyan),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15)),
                    Text('Grade 9 math',
                        style: TextStyle(fontSize: 12, color: Colors.cyan))
                  ],
                ))),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: Container(
                    margin: EdgeInsets.only(top: 50),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.width / 7.5,
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
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScreenPlayGame(),
                          ));
                        },
                        child: Text('Start',
                            style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 20,
                            )),
                      ),
                    ))),

            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 7,
                    height: MediaQuery.of(context).size.width / 7,
                    child: Image(image: AssetImage('assets/reply-message.png')),
                  ))
            ])
          ],
        ),
      ),
    );
  }
}
