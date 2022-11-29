import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/screen_playgame/pages_question/page_win.dart';
import 'package:game_app/screen_result/screen_result.dart';
import 'package:game_app/screen_room/screen_room.dart';
import 'package:game_app/screen_singler_play/screen_singler_play.dart';
import '../screen_room/footer_room.dart';
import '../button_game/button_game.dart';
import './pages_question/page_question1.dart';
import './pages_question/page_question2.dart';
import './pages_question/page_question3.dart';
import '../model/question_model.dart';
import '../data/questions_example.dart';
import '../button_game/color.dart';

class MyContentPlayGame extends StatefulWidget {
  const MyContentPlayGame({super.key});

  @override
  State<MyContentPlayGame> createState() => _MyContentPlayGameState();
}

class _MyContentPlayGameState extends State<MyContentPlayGame> {
  final tr = PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xfff134E5E),
                    Color(0xffff71B280),
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
              child: SizedBox(
                child: PageView.builder(
                  controller: _controller!,
                  onPageChanged: (page) {
                    if (page == questions.length - 1) {
                      setState(() {
                        btnText = "See Results";
                      });
                    }
                    setState(() {
                      answered = false;
                    });
                  },
                  physics: new NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Question ${index + 1}/10",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 2,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Text(
                                "${questions[index].question}",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                          for (int i = 0;
                              i < questions[index].answers!.length;
                              i++)
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  width: double.infinity,
                                  height: 30.0,
                                  margin: EdgeInsets.only(
                                      bottom: 4.0, left: 12.0, right: 12.0),
                                  child: RawMaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    splashColor:
                                        Color.fromARGB(255, 243, 243, 134),
                                    animationDuration: kThemeAnimationDuration,
                                    focusElevation: 10,
                                    hoverColor: Colors.transparent,
                                    fillColor: btnPressed
                                        ? questions[index]
                                                .answers!
                                                .values
                                                .toList()[i]
                                            ? Color.fromARGB(255, 90, 165, 4)
                                            : Color.fromARGB(255, 216, 25, 12)
                                        : AppColor.secondaryColor,
                                    onPressed: !answered
                                        ? () {
                                            if (questions[index]
                                                .answers!
                                                .values
                                                .toList()[i]) {
                                              score += 10;
                                              print("yes");
                                            } else {
                                              print("no");
                                            }
                                            setState(() {
                                              btnPressed = true;
                                              answered = true;
                                            });
                                          }
                                        : null,
                                    child: Text(
                                        questions[index]
                                            .answers!
                                            .keys
                                            .toList()[i],
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 8, 0, 0),
                                          fontSize: 18.0,
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(2),
                            child: RawMaterialButton(
                              onPressed: () {
                                if (_controller!.page?.toInt() ==
                                    questions.length - 1) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResultScreen(score)));
                                } else {
                                  _controller!.nextPage(
                                      duration: Duration(milliseconds: 1000),
                                      curve: Curves.linear);

                                  setState(() {
                                    btnPressed = false;
                                  });
                                }
                              },
                              shape: StadiumBorder(),
                              fillColor: Colors.blueGrey,
                              padding: EdgeInsets.all(10.0),
                              elevation: 0.0,
                              child: Text(
                                btnText,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: questions.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
