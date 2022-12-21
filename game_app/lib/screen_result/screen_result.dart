import 'package:flutter/material.dart';
import 'package:game_app/api_services.dart';
import 'package:game_app/screen_maingame/screen_maingame.dart';
import '../button_game/button_game.dart';
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

class _ResultScreenState extends State<ResultScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _controller.repeat(reverse: true);
    _colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.green,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );
    Animation<double> _fontSizeAnimation = Tween<double>(
      begin: 1,
      end: 48,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff928DAB),
            Color(0xff00c3ff),
            Color(0xffffb56b),
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            FutureBuilder<dynamic>(
              future: getHighScore(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  int highScore = snapshot.data;
                  int currentScore = widget.score;
                  if (currentScore > highScore) {
                    highScore = currentScore;
                  }
                  return AnimatedBuilder(
                    animation: _colorAnimation,
                    builder: (context, child) {
                      return Text(
                        "High score in serve is ${highScore.toString()}",
                        style: TextStyle(
                            color: _colorAnimation.value, fontSize: 32),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text("Error: ${snapshot.error}");
                }
                return CircularProgressIndicator();
              },
            ),
            SizedBox(height: 25),
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
              height: 20.0,
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
                color: Color.fromARGB(255, 255, 235, 58),
                fontSize: 85.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Container(
              width: 120,
              height: 60,
              child: ButtonWidget(
                button: ElavetedButon(
                  text: "Go Home",
                  page: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenMainGame(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
