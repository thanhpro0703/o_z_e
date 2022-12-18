import 'package:flutter/material.dart';
import 'package:game_app/api_services.dart';
import 'package:game_app/screen_maingame/screen_maingame.dart';
import '../button_game/color.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    Key? key,
    required this.score,
  }) : super(key: key);

  final int score;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "You Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          ElevatedButton(
            onPressed: () {
              addScore(widget.score, FirebaseAuth.instance.currentUser!.email!);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenMainGame(),
                  ));
            },
            child: Text(
              "Reapeat the quizz",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
