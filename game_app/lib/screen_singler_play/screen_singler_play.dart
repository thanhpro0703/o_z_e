import 'package:flutter/material.dart';
import 'package:game_app/screen_singler_play/content_single_play.dart';
import '../screen_maingame/content.dart';
import '../screen_maingame/header.dart';
import '../screen_maingame/footer.dart';

class ScreenSinglePlay extends StatefulWidget {
  const ScreenSinglePlay({super.key});

  @override
  State<ScreenSinglePlay> createState() => _ScreenSinglePlayState();
}

class _ScreenSinglePlayState extends State<ScreenSinglePlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [MyHeader(), MyContentSinglePlay(), MyFooter()],
          ),
        ),
      ),
    );
  }
}
