import 'package:flutter/material.dart';
import 'package:game_app/screen_maingame/content.dart';
import 'package:game_app/screen_maingame/footer.dart';
import 'header.dart';
import 'package:audioplayers/audioplayers.dart';

class ScreenMainGame extends StatefulWidget {
  const ScreenMainGame({super.key});

  @override
  State<ScreenMainGame> createState() => _ScreenMainGameState();
}

class _ScreenMainGameState extends State<ScreenMainGame> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [MyHeader(), MyContent(), MyFooter()],
          ),
        ),
      ),
    );
  }
}
