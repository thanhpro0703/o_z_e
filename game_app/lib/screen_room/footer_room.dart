import 'package:flutter/material.dart';
import 'package:game_app/screen_playgame/screen_playgame.dart';
import 'package:game_app/screen_room/screen_room.dart';
import 'package:game_app/screen_solo/screen_solo.dart';
import '../screen_maingame/screen_maingame.dart';
import '../button_game/button_game.dart';

class MyFooterRoom extends StatefulWidget {
  const MyFooterRoom({super.key});

  @override
  State<MyFooterRoom> createState() => _MyFooterRoomState();
}

class _MyFooterRoomState extends State<MyFooterRoom> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/footer.jpg'), fit: BoxFit.cover),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  child: ButtonWidget(
                    button: ElavetedButon(
                      text: "BACK",
                      page: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ScreenMainGame(),
                        ));
                      },
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: ButtonWidget(
                      button: ElavetedButon(
                    text: "ROOM",
                    page: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenRoom(),
                      ));
                    },
                  )),
                ),
                Container(
                  height: 60,
                  child: ButtonWidget(
                      button: ElavetedButon(
                          text: "RANK",
                          page: () {
                            Navigator.pop(context);
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Screen_Solo(),
                            ));
                          })),
                )
              ],
            )));
  }
}
