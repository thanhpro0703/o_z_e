import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:game_app/button_game/button_avatar.dart';
import 'package:game_app/button_game/button_game.dart';
import 'package:game_app/history/history_game.dart';
import 'package:game_app/screen_maingame/content.dart';
import 'package:game_app/screen_play_group/screen_play_group.dart';
import 'package:game_app/screen_setting/screen_seting.dart';
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
                  ButtonAvatar(
                    height: 100,
                    width: 100,
                    img: 'assets/account.png',
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
                ButtonSetting(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen_Acount(),
                        ));
                  },
                  width: 190,
                  height: 60,
                  img: 'assets/textmyaccount.png',
                  colors: [
                    Color(0xffff2193b0),
                    Color(0xfff6dd5ed),
                  ],
                ),
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
              Container(
                height: 50,
                width: 150,
                child: ButtonWidget(
                  button: ElavetedButon(
                    text: "History",
                    page: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => History(),
                      ));
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 120,
                    child: ButtonWidget(
                      button: ElavetedButon(
                        text: "BACK",
                        page: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    child: ButtonPlayWidget(
                      buttonplay: ElavetedButonPlay(
                        text: "ID: HXJSNEJ5G",
                        page: () {},
                      ),
                    ),
                  ),
                ],
              )
            ])));
  }
}
