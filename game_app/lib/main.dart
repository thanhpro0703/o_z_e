import 'package:flutter/material.dart';
import 'package:game_app/screen_singler_play/screen_singler_play.dart';
import 'screen_maingame/screen_maingame.dart';
import 'screen_sign_in/form_sign_in.dart';
import 'screen_room/screen_room.dart';
import 'screen_setting/screen_seting.dart';
import 'screen_choose_level/screen_choose_level.dart';

import 'screen_singler_play/screen_singler_play.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screen_Choose_Level(),
    );
  }
}
