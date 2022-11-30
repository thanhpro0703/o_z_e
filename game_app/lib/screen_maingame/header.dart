import 'package:flutter/material.dart';
import '../screen_maingame/screen_maingame.dart';
import '../button_game/button_game.dart';
import '../button_game/button_avatar.dart';
import '../button_game/button_setting.dart';
import 'package:lottie/lottie.dart';

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
            ButtonWidget(
              button: ElavetedButon(
                text: "Golds",
                page: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenMainGame(),
                  ));
                },
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
