import 'package:flutter/material.dart';
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
            children: [
              MyHeaderPlayGame(),
              MyContentPlayGame(),
              MyFooterPlayGame()
            ],
          ),
        ),
      ),
    );
  }
}
