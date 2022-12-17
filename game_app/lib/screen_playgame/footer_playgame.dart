import 'package:flutter/material.dart';
import 'package:game_app/screen_shop/screen_shop.dart';
import '../screen_room/footer_room.dart';
import '../screen_room/screen_room.dart';
import '../button_game/button_game.dart';
import 'package:firebase_database/firebase_database.dart';

class MyFooterPlayGame extends StatefulWidget {
  const MyFooterPlayGame({super.key});

  @override
  State<MyFooterPlayGame> createState() => _MyFooterPlayGameState();
}

class _MyFooterPlayGameState extends State<MyFooterPlayGame> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/footer.jpg'), fit: BoxFit.cover),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.7, 1.5),
                colors: <Color>[
                  Color(0xff696eff),
                  Color(0xfffa8cff),
                  Color(0xffffebf4f5),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
                  spreadRadius: 3,
                  blurRadius: 4,
                  offset: Offset(1, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                    button: ElavetedButon(
                  page: () {},
                  text: "Trí tuệ",
                )),
                ButtonWidget(
                    button: ElavetedButon(
                  page: () {},
                  text: "50%",
                )),
                ButtonWidget(
                    button: ElavetedButon(
                  page: () {
                    DatabaseReference scoresRef =
                        FirebaseDatabase.instance.ref().child("scores");
                    scoresRef
                        .child("played1")
                        .set({"name": "Player 1", "score": 100});
                  },
                  text: "NEXT",
                )),
              ],
            )));
  }
}
