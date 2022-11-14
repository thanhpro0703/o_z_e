import 'package:flutter/material.dart';
import 'package:game_app/screen_shop/screen_shop.dart';
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
                Container(
                  height: 60,
                  child: ButtonWidget(
                    button: ElavetedButon(
                      text: "FRIEND",
                      page: () {
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
                      text: "EVENT",
                      page: () {
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
