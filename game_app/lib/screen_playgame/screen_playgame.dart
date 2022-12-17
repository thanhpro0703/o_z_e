import 'package:flutter/material.dart';

import 'package:game_app/model/question_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:game_app/screen_maingame/content.dart';
import 'header_playgame.dart';
import 'content_playgame.dart';
import 'footer_playgame.dart';

class ScreenPlayGame extends StatefulWidget {
  const ScreenPlayGame({super.key});

  @override
  State<ScreenPlayGame> createState() => _ScreenPlayGameState();
}

class _ScreenPlayGameState extends State<ScreenPlayGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [QuizScreen(), MyFooterPlayGame()],
          ),
        ),
      ),
    );
  }
}
