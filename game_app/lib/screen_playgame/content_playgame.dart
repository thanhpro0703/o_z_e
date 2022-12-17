import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/api_services.dart';
import 'package:game_app/screen_result/screen_result.dart';
import '../const/colors.dart';
import '../const/images.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import '../const/text_style.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var currentQuestionIndex = 0;
  int seconds = 20;
  Timer? timer;
  late Future quiz;

  int points = 0;

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
            colors: [blue, darkBlue],
          )),
          child: FutureBuilder(
            future: quiz,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                var data = snapshot.data["results"];
                int hardQuestionsCount = 0;
                for (var item in data) {
                  if (item["difficulty"] == "hard") {
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
                                width: 80,
                                height: 80,
                                child: CircularProgressIndicator(
                                  value: seconds / 10,
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
                                onPressed: null,
                                icon: const Icon(CupertinoIcons.heart_fill,
                                    color: Colors.white, size: 18),
                                label: normalText(
                                    color: Colors.white,
                                    size: 14,
                                    text: "Like")),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: normalText(
                              color: lightgrey,
                              size: 18,
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
                                  optionsColor[index] = Colors.green;
                                  points = points + 10;
                                } else {
                                  optionsColor[index] = Colors.red;
                                }

                                if (currentQuestionIndex <
                                    hardQuestionsList.length - 1) {
                                  Future.delayed(
                                      const Duration(milliseconds: 500), () {
                                    gotoNextQuestion();
                                  });
                                } else {
                                  timer!.cancel();
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
