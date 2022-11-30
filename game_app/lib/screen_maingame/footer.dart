import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_app/screen_friends/screen_friends.dart';
import 'package:game_app/screen_shop/screen_shop.dart';
import 'package:game_app/screen_toprank/screen_toprank.dart';
import '../screen_maingame/screen_maingame.dart';
import '../button_game/button_game.dart';
import '../screen_room/screen_room.dart';

class MyFooter extends StatefulWidget {
  const MyFooter({super.key});

  @override
  State<MyFooter> createState() => _MyFooterState();
}

class _MyFooterState extends State<MyFooter> {
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
                      text: "FRIENDS",
                      page: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScreenFriends()));
                      },
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: ButtonWidget(
                    button: ElavetedButon(
                      text: "TOP RANK",
                      page: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TopRank(),
                        ));
                      },
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: ButtonWidget(
                    button: ElavetedButon(
                      text: "SHOP",
                      page: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ScreenShop(),
                        ));
                      },
                    ),
                  ),
                ),
              ],
            )));
  }
}
