import 'package:flutter/material.dart';
import 'package:game_app/screen_playgame/pages_question/page_win.dart';
import 'package:game_app/screen_room/screen_room.dart';
import 'package:game_app/screen_singler_play/screen_singler_play.dart';
import '../screen_room/footer_room.dart';
import '../button_game/button_game.dart';
import './pages_question/page_question1.dart';
import './pages_question/page_question2.dart';
import './pages_question/page_question3.dart';

class MyContentPlayGame extends StatefulWidget {
  const MyContentPlayGame({super.key});

  @override
  State<MyContentPlayGame> createState() => _MyContentPlayGameState();
}

class _MyContentPlayGameState extends State<MyContentPlayGame> {
  final tr = PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 600,
                child: PageView(
                  controller: tr,
                  children: [
                    PageQuestion1(),
                    PageQuestion2(),
                    PageQuestion3(),
                    PageWin()
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      flex: 1,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 1),
                              colors: <Color>[
                                Color(0xff1f005c),
                                Color(0xff5b0060),
                                Color(0xff870160),
                                Color(0xffac255e),
                                Color(0xffca485c),
                                Color(0xffe16b5c),
                                Color(0xfff39060),
                                Color(0xffffb56b),
                              ],
                              tileMode: TileMode.mirror,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade600,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.grey.shade600,
                                  offset: Offset(-4.0, -4.0),
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0)
                            ],
                          ),
                          height: 40,
                          width: 100,
                          child: ButtonWidget(
                              button: ElavetedButon(
                                  text: "Back",
                                  page: () {
                                    tr.previousPage(
                                        duration: _kDuration, curve: _kCurve);
                                  }))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      flex: 1,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 1),
                              colors: <Color>[
                                Color(0xff1f005c),
                                Color(0xff5b0060),
                                Color(0xff870160),
                                Color(0xffac255e),
                                Color(0xffca485c),
                                Color(0xffe16b5c),
                                Color(0xfff39060),
                                Color(0xffffb56b),
                              ],
                              tileMode: TileMode.mirror,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade600,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.grey.shade600,
                                  offset: Offset(-4.0, -4.0),
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0)
                            ],
                          ),
                          height: 40,
                          width: 100,
                          child: ButtonWidget(
                              button: ElavetedButon(
                            text: "Next",
                            page: () {
                              tr.nextPage(duration: _kDuration, curve: _kCurve);
                            },
                          ))),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
