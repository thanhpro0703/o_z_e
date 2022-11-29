import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_app/screen_account/screen_account.dart';
import 'package:game_app/screen_maingame/content.dart';
import 'package:game_app/screen_maingame/screen_maingame.dart';
import 'package:game_app/screen_singler_play/screen_singler_play.dart';
import '../button_game/button_game.dart';

class ScreenSetting extends StatefulWidget {
  const ScreenSetting({super.key});

  @override
  State<ScreenSetting> createState() => _ScreenSettingState();
}

class _ScreenSettingState extends State<ScreenSetting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/background-setting.jpeg",
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 140),
                height: 70,
                child: ButtonPlayWidget(
                  buttonplay: ElavetedButonPlay(
                    text: FirebaseAuth.instance.currentUser!.email!,
                    page: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonSetting(
                        onPressed: () {},
                        width: 65,
                        height: 65,
                        img: 'assets/musical-note.png',
                        colors: [
                          Color(0xffff2980b9),
                          Color(0xfff6dd5fa),
                          Color(0xffffffff),
                        ],
                      ),
                      ButtonSetting(
                        onPressed: () {},
                        width: 65,
                        height: 65,
                        img: 'assets/sound.png',
                        colors: [
                          Color(0xffff2980b9),
                          Color(0xfff6dd5fa),
                          Color(0xffffffff),
                        ],
                      ),
                      ButtonSetting(
                        onPressed: () {},
                        width: 65,
                        height: 65,
                        img: 'assets/vibration.png',
                        colors: [
                          Color(0xffff2980b9),
                          Color(0xfff6dd5fa),
                          Color(0xffffffff),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  flex: 2,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonSetting(
                          onPressed: () {},
                          width: 90,
                          height: 90,
                          img: 'assets/account.png',
                          colors: [
                            Color(0xffffd53369),
                            Color(0xfffcabd6d),
                          ],
                        ),
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
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonSetting(
                        onPressed: () {},
                        width: 200,
                        height: 30,
                        img: 'assets/howtoplay.png',
                        colors: [
                          Color(0xffff83a4d4),
                          Color(0xfff6bfbff),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 160,
                height: 40,
                child: Row(
                  children: [
                    ButtonWidget(
                      button: ElavetedButon(
                        text: "BACK",
                        page: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 60,
                      child: ButtonWidget(
                        button: ElavetedButon(
                          text: "Log Out",
                          page: () {
                            FirebaseAuth.instance.signOut();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonSetting extends StatefulWidget {
  const ButtonSetting(
      {super.key,
      required this.width,
      required this.height,
      required this.img,
      required this.colors,
      required this.onPressed});
  final double width;
  final double height;
  final String img;
  final List<Color> colors;
  final void Function()? onPressed;

  @override
  State<ButtonSetting> createState() => _ButtonSettingState();
}

class _ButtonSettingState extends State<ButtonSetting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
          flex: 1,
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.7, 1.5),
                  colors: widget.colors),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(66, 255, 255, 255),
                    offset: Offset(0, 4),
                    blurRadius: 5.0)
              ],
            ),
            child: Expanded(
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(100, 40)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    // elevation: MaterialStateProperty.all(3),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: widget.onPressed,
                  child: Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset(
                        widget.img,
                      ),
                      width: 120)),
            ),
          )),
    );
  }
}
