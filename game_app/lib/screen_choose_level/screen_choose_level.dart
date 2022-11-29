import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:game_app/screen_play_group/screen_play_group.dart';
import 'package:game_app/screen_playgame/screen_playgame.dart';
import 'package:game_app/screen_room/screen_room.dart';
import 'package:game_app/screen_solo/screen_solo.dart';
import '../screen_maingame/screen_maingame.dart';

class Screen_Choose_Level extends StatefulWidget {
  const Screen_Choose_Level({super.key});

  @override
  State<Screen_Choose_Level> createState() => _MyScreenChooseLevel();
}

class _MyScreenChooseLevel extends State<Screen_Choose_Level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/background-home.png"),
        fit: BoxFit.fill,
      )),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  colors: [Color(0xfff32e20), Color(0xff171717)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )),
            child: Center(
              child: Text(
                'Arena',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 26,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: MediaQuery.of(context).size.height / 10,
              // color: Colors.grey.withOpacity(0.4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffff6633CC).withOpacity(0.7)),
              child: Center(
                child: Text(
                  'Time: 6-13/11/2022',
                  style: TextStyle(
                      color: Colors.cyanAccent.withOpacity(0.8), fontSize: 19),
                ),
              )),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, shadowColor: Colors.transparent),
              child: Container(
                width: MediaQuery.of(context).size.height / 9,
                height: MediaQuery.of(context).size.height / 9,
                // color: Colors.grey.withOpacity(0.4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Color(0xfff32e20), Color(0xff171717)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
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
              width: MediaQuery.of(context).size.width / 2.2,
              height: MediaQuery.of(context).size.height / 14,
              // color: Colors.grey.withOpacity(0.4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffff6633CC).withOpacity(0.7)),
              child: Center(
                child: Text(
                  'Name',
                  style: TextStyle(
                      color: Colors.cyanAccent.withOpacity(0.8), fontSize: 19),
                ),
              )),
          Padding(padding: EdgeInsets.only(top: 30)),
          Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: 100,
              // color: Colors.grey.withOpacity(0.4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffff6633CC).withOpacity(0.7)),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rank: 1000',
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
                      )
                    ]),
              )),
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Screen_Team(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Container(
                      width: MediaQuery.of(context).size.width / 4.3,
                      height: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          gradient: const LinearGradient(
                            colors: [Color(0xfff32e20), Color(0xff171717)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )),
                      child: Center(
                        child: Text(
                          '3 VS 3',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 17,
                          ),
                        ),
                      ))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Screen_Solo(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Container(
                      width: MediaQuery.of(context).size.width / 4.3,
                      height: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          gradient: const LinearGradient(
                            colors: [Color(0xfff32e20), Color(0xff171717)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )),
                      child: Center(
                        child: Text(
                          '1 VS 1',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 17,
                          ),
                        ),
                      ))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenRoom(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Container(
                      width: MediaQuery.of(context).size.width / 4.3,
                      height: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          gradient: const LinearGradient(
                            colors: [Color(0xfff32e20), Color(0xff171717)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )),
                      child: Center(
                        child: Text(
                          'Random',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 17,
                          ),
                        ),
                      )))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: Container(
                  width: 70,
                  height: 70,
                  child: Image(image: AssetImage('assets/reply-message.png')),
                ))
          ])
        ],
      ),
    ));
  }
}
