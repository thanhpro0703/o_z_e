import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_app/api_services.dart';
import 'package:game_app/button_game/button_avatar.dart';
import 'package:game_app/button_game/button_game.dart';
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
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/background-home.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 10)),
            Container(
              child: Center(
                child: Container(
                  width: 120,
                  height: 50,
                  child: ButtonWidget(
                    button: ElavetedButon(
                      text: "ARENA",
                      page: () {},
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
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
                        color: Colors.cyanAccent.withOpacity(0.8),
                        fontSize: 19),
                  ),
                )),
            Padding(padding: EdgeInsets.only(top: 10)),
            ButtonAvatar(
              height: 100,
              width: 100,
              image: 'assets/account.png', username: FirebaseAuth.instance.currentUser!.email!,
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 14,
                // color: Colors.grey.withOpacity(0.4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffff6633CC).withOpacity(0.7)),
                child: Center(
                  child:  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Text(
                      FirebaseAuth.instance.currentUser!.email!,
                      style: TextStyle(
                          color: Colors.cyanAccent.withOpacity(0.8),
                          fontSize: 19),
                    ),
                  ),
                )),
            Padding(padding: EdgeInsets.only(top: 10)),
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
                        FutureBuilder(
                            future: totalScore(FirebaseAuth.instance.currentUser!.email!),
                            builder:(context,snapshot){
                              return  Text(
                                'Rank: ${snapshot.data}',
                                style: TextStyle(
                                    color: Colors.cyanAccent.withOpacity(0.8),
                                    fontSize: 19),
                              );
                            }
                        ),
                        const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                        FutureBuilder(
                            future: getHighScoreUserName(FirebaseAuth.instance.currentUser!.email!),
                            builder:(context,snapshot){
                              return  Text(
                                'Height Score: ${snapshot.data}',
                                style: TextStyle(
                                    color: Colors.cyanAccent.withOpacity(0.8),
                                    fontSize: 19),
                              );
                            }

                        ),
                      ]),
                )),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                  button: ElavetedButon(
                    text: "RANK",
                    page: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Screen_Solo(),
                      ));
                    },
                  ),
                ),
                ButtonWidget(
                  button: ElavetedButon(
                    text: "3VS3",
                    page: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenMainGame(),
                      ));
                    },
                  ),
                ),
                ButtonWidget(
                  button: ElavetedButon(
                    text: "RANDOM",
                    page: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenMainGame(),
                      ));
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 10),
              child: Container(
                width: 160,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ButtonWidget(
                    button: ElavetedButon(
                      text: "BACK",
                      page: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenMainGame(),
                            ));
                      },
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      )),
    );
  }
}
