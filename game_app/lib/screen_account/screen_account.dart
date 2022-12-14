import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:game_app/api_services.dart';
import 'package:game_app/button_game/button_avatar.dart';
import 'package:game_app/button_game/button_game.dart';
import 'package:game_app/history/history.dart';
import 'package:game_app/history/history_game.dart';
import 'package:game_app/screen_maingame/content.dart';
import 'package:game_app/screen_play_group/screen_play_group.dart';
import 'package:game_app/screen_setting/screen_seting.dart';
import 'package:game_app/screen_solo/screen_solo.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screen_maingame/screen_maingame.dart';

class Screen_Acount extends StatefulWidget {
  const Screen_Acount({
    super.key, required this.username,
  });

  final String username;

  @override
  State<Screen_Acount> createState() => _MyScreenAccount();
}

class _MyScreenAccount extends State<Screen_Acount> {

  var heightScore=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background-home.png"),
                  fit: BoxFit.fill,
                )),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                children: [
                  Column(children: [
                    ButtonAvatar(
                      height: 100,
                      width: 100,
                      image: 'assets/account.png', username: widget.username,
                    ),
                    Container(
                        child: Center(
                            child: Text(
                              // FirebaseAuth.instance.currentUser,
                              '',
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
                    margin: EdgeInsets.only(top: 10),
                    height: 70,

                    child: ButtonPlayWidget(
                      buttonplay: ElavetedButonPlay(
                        text: widget.username,
                        page: () {},
                      ),
                      //  ,
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  height: MediaQuery.of(context).size.width / 6,
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
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Column(
                    children: [
                      FutureBuilder(
                        future: getHighScoreUserName(widget.username),
                        builder: (context, snapshot) {
                          if(snapshot.data == null || !snapshot.hasData){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          heightScore = snapshot.data!;
                          return Text("Height Score: ${snapshot.data!}",
                              style: GoogleFonts.akayaTelivigala(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.systemYellow));
                        },
                      ),
                      FutureBuilder(
                        future: totalScore(widget.username),
                        builder: (context, snapshot) {
                          if(snapshot.data == null || !snapshot.hasData){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          return Text(
                            "Total Score: ${snapshot.data!}",
                            style: GoogleFonts.akayaTelivigala(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow),
                          );
                        },
                      ),
                    ],
                  )),
              Container(
                height: 50,
                width: 150,
                child: ButtonWidget(
                  button: ElavetedButon(
                    text: "History",
                    page: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  History(username: widget.username,),
                      ));
                    },
                  ),
                ),
              ),
              SizedBox(height: 80),
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
                        text: "ID: abc",
                        page: () {},
                      ),
                    ),
                  ),
                ],
              )
            ])));
  }
}
