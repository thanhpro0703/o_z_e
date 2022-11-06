import 'package:flutter/material.dart';
import 'screen_maingame/screen_maingame.dart';
import 'screen_chars/screen_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenMainGame(),
    );
  }
}
