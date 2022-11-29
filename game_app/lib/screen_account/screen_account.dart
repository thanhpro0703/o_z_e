import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:game_app/history/history_game.dart';
import 'package:game_app/screen_play_group/screen_play_group.dart';
import 'package:game_app/screen_solo/screen_solo.dart';
import '../screen_maingame/screen_maingame.dart';

class Screen_Acount extends StatefulWidget {
  const Screen_Acount({super.key});

  @override
  State<Screen_Acount> createState() => _MyScreenAccount();
}

class _MyScreenAccount extends State<Screen_Acount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/background-home.png"),
              fit: BoxFit.fill,
            )),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(padding: EdgeInsets.only(top: 30)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [Color(0xfff32e20), Color(0xff171717)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        )),
                    child: Center(
                        child: Image.asset(
                      'assets/account.png',
                      width: 45,
                      height: 50,
                    )),
                  ),
                  Container(
                      child: Center(
                          child: Text(
                        'LV.51',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      )),
                      width: MediaQuery.of(context).size.width / 7,
                      height: MediaQuery.of(context).size.width / 15,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 104, 99, 99),
                          Color(0xff171717)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ))),
                ]),
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 156, 188, 243),
                                Color.fromARGB(255, 0, 37, 110)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        child: Center(
                            child: Image(
                                image:
                                    AssetImage('assets/textmyaccount.png'))))),
              ]),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'RANK: 200',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Padding(padding: EdgeInsets.only(left: 30)),
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.width / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red),
                  child: Center(
                      child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 40,
                  )),
                ),
              ]),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text('Win: 10020',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              Padding(padding: EdgeInsets.only(top: 15)),
              Text('Total: 15000',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              Padding(padding: EdgeInsets.only(top: 15)),
              Text('Point: 20300',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              Padding(padding: EdgeInsets.only(top: 15)),
              Text('Winrate: 78%',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              Padding(padding: EdgeInsets.only(top: 15)),
              Text('Win streak: 2',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              Padding(padding: EdgeInsets.only(top: 30)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => History(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      'History',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    )),
                  )),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ScreenMainGame(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: Container(
                          width: MediaQuery.of(context).size.width / 8,
                          height: MediaQuery.of(context).size.width / 8,
                          child: Image(
                              image: AssetImage('assets/reply-message.png')))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width / 5, 30, 0, 0)),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.6,
                    height: MediaQuery.of(context).size.width / 13,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                        child: Row(
                      children: [
                        Text(
                          'Id: 653MdjinD',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent),
                            child: Icon(
                              Icons.copy,
                              color: Colors.black,
                              size: 13,
                            ))
                      ],
                    )),
                  )
                ],
              )
            ])));
  }
}
