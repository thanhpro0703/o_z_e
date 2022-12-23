import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/api_services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:game_app/screen_result/screen_result.dart';
import '../const/colors.dart';
import '../const/images.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import '../const/text_style.dart';
import 'package:audioplayers/audioplayers.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({Key? key, required this.level}) : super(key: key);
  String level;
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var currentQuestionIndex = 0;
  int seconds = 15;
  Timer? timer;
  late Future quiz;
  final player = AudioPlayer();
  int points = 0;
  int resultQuestion = 0;

  var isLoaded = false;
  var hardQuestionsList = [];
  var optionsList = [];

  var optionsColor = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  @override
  void initState() {
    super.initState();
    quiz = getQuiz();
    startTimer();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  resetColors() {
    optionsColor = [
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
    ];
  }

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else if (currentQuestionIndex == hardQuestionsList.length - 1 &&
            seconds == 0) {
          gotoNextResult();
        } else {
          gotoNextQuestion();
        }
      });
    });
  }

  gotoNextQuestion() {
    isLoaded = false;
    currentQuestionIndex++;
    resetColors();
    timer!.cancel();
    seconds = 15;
    startTimer();
  }

  gotoNextResult() {
    isLoaded = false;
    timer!.cancel();

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(score: points),
        ));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
        flex: 4,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff928DAB),
              Color(0xff56CCF2),
              Color(0xfff39060),
              Color(0xffffb56b),
            ],
          )),
          child: FutureBuilder(
            future: quiz,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                var data = snapshot.data["results"];
                int hardQuestionsCount = 0;
                for (var item in data) {
                  if (item["level"] == widget.level) {
                    hardQuestionsCount++;
                    if (hardQuestionsList.length < hardQuestionsCount) {
                      hardQuestionsList.add(item);
                    } else {
                      break;
                    }
                  }
                }
                if (isLoaded == false) {
                  optionsList = hardQuestionsList[currentQuestionIndex]
                      ["incorrect_answers"];
                  optionsList.add(hardQuestionsList[currentQuestionIndex]
                      ["correct_answer"]);
                  optionsList.shuffle();
                  isLoaded = true;
                }

                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: lightgrey, width: 2),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  CupertinoIcons.xmark,
                                  color: Colors.white,
                                  size: 28,
                                )),
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              normalText(
                                  color: Colors.white,
                                  size: 24,
                                  text: "$seconds"),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  value: seconds / 15,
                                  valueColor: const AlwaysStoppedAnimation(
                                      Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: lightgrey, width: 2),
                            ),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(CupertinoIcons.heart_fill,
                                    color: Colors.white, size: 18),
                                label: normalText(
                                    color: Colors.white,
                                    size: 14,
                                    text:
                                        hardQuestionsList[currentQuestionIndex]
                                            ["difficulty"])),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: normalText(
                              color: lightgrey,
                              size: 19,
                              text:
                                  "Question ${currentQuestionIndex + 1} of ${hardQuestionsList.length}")),
                      const SizedBox(height: 20),
                      normalText(
                          color: Colors.white,
                          size: 20,
                          text: hardQuestionsList[currentQuestionIndex]
                              ["question"]),
                      const SizedBox(height: 20),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: optionsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          var answer = hardQuestionsList[currentQuestionIndex]
                              ["correct_answer"];

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                if (answer.toString() ==
                                    optionsList[index].toString()) {
                                  resultQuestion++;
                                  optionsColor[index] =
                                      Color.fromARGB(255, 140, 252, 144);
                                  if (seconds == 15) {
                                    points = points + 30;
                                  } else if (seconds == 14) {
                                    points = points + 25;
                                  } else if (seconds == 13) {
                                    points = points + 20;
                                  } else if (seconds == 12) {
                                    points = points + 15;
                                  } else {
                                    points = points + 10;
                                  }
                                  print(points);

                                  player.play(AssetSource('conrec.mp3'));
                                } else {
                                  optionsColor[index] =
                                      Color.fromARGB(255, 255, 108, 97);
                                  player.play(AssetSource('sai.mp3'));
                                }

                                if (currentQuestionIndex <
                                    hardQuestionsList.length - 1) {
                                  Future.delayed(
                                      const Duration(milliseconds: 250), () {
                                    gotoNextQuestion();
                                  });
                                } else {
                                  timer!.cancel();
                                  addScore(
                                      points,
                                      hardQuestionsList.length,
                                      resultQuestion,
                                      FirebaseAuth
                                          .instance.currentUser!.email!);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ResultScreen(score: points),
                                      ));
                                }
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              alignment: Alignment.center,
                              width: size.width - 100,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: optionsColor[index],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: headingText(
                                color: blue,
                                size: 18,
                                text: optionsList[index].toString(),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
                );
              }
            },
          ),
        ));
  }
}
