import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_app/screen_playgame/screen_playgame.dart';
import 'package:game_app/screen_room/screen_room.dart';
import 'package:game_app/screen_singler_play/screen_singler_play.dart';
import '../screen_room/footer_room.dart';

class MyContent extends StatefulWidget {
  const MyContent({super.key});

  @override
  State<MyContent> createState() => _MyContentState();
}

class _MyContentState extends State<MyContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background-home.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.7, 1.5),
                            colors: <Color>[
                          Color(0xffff84ffc9),
                          Color(0xffffebf4f5),
                          Color(0xfffff6cfbe),
                        ])),
                    child: ButtonPlayWidget(
                      buttonplay: ElavetedButonPlay(
                        text: FirebaseAuth.instance.currentUser!.email!,
                        page: () {},
                      ),
                    ),
                  ),
                ]),
                ButtonPlayWidget(
                  buttonplay: ElavetedButonPlay(
                    text: "P L A Y",
                    page: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenSinglePlay(),
                      ));
                    },
                  ),
                ),
                ButtonPlayWidget(
                  buttonplay: ElavetedButonPlay(
                    text: "R O O M",
                    page: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenRoom(),
                      ));
                    },
                  ),
                ),
                ButtonPlayWidget(
                  buttonplay: ElavetedButonPlay(
                    text: "R A N K",
                    page: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenPlayGame(),
                      ));
                    },
                  ),
                )
              ], /*   */
            )));
  }
}

class ElavetedButonPlay extends StatefulWidget {
  const ElavetedButonPlay({super.key, required this.text, required this.page});
  final String text;
  final page;

  @override
  State<ElavetedButonPlay> createState() => _ElavetedButonPlayState();
}

class _ElavetedButonPlayState extends State<ElavetedButonPlay> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(200, 80)),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        // elevation: MaterialStateProperty.all(3),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: widget.page,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 18,
            // fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ButtonPlayWidget extends StatefulWidget {
  const ButtonPlayWidget({super.key, required this.buttonplay});
  final Widget buttonplay;
  @override
  State<ButtonPlayWidget> createState() => _ButtonPlayWidgetState();
}

class _ButtonPlayWidgetState extends State<ButtonPlayWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.7, 1.5),
              colors: <Color>[
                Color(0xffff8e0e00),
                Color(0xfff1f1c18),
              ],
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget.buttonplay),
    );
  }
}
