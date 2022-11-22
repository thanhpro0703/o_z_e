import 'package:flutter/material.dart';
import 'package:game_app/screen_account/screen_account.dart';
import 'package:game_app/screen_setting/screen_seting.dart';

import '../screen_maingame/screen_maingame.dart';
import '../button_game/button_game.dart';
import '../button_game/button_avatar.dart';
import '../button_game/button_setting.dart';

class MyHeader extends StatefulWidget {
  const MyHeader({super.key});

  @override
  State<MyHeader> createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/header.jpg"), fit: BoxFit.cover),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.7, 1.5),
            colors: <Color>[
              Color(0xfff9c58d),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonHeaderWidget(
              buttonheader: ElavetedButon(text: "Hears"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.7, 1.5),
                      colors: <Color>[
                        Color(0xffff8e0e00),
                        Color(0xfff1f1c18),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                  ),
                  child: Expanded(
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all(Size(100, 60)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // elevation: MaterialStateProperty.all(3),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Screen_Acount(),
                          ));
                        },
                        child: Image.asset(
                          'assets/account.png',
                          width: 45,
                          height: 40,
                        )),
                  ),
                ),

            ButtonWidget(
              button: ElavetedButon(
                text: "Hear",
                page: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenMainGame(),
                  ));
                },

              ),
            ),
            ButtonAvatar(
              height: 100,
              width: 100,
              img: 'assets/account.png',
            ),
            Container(
              child: ButtonWidget(
                button: ElavetedButon(
                    text: "Coins",
                    page: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenMainGame(),
                      ));
                    }),
              ),
            ),
            ButtonSetting(
              img: 'assets/settings.png',
            )
          ],
        ),
      ),
    );
  }
}
