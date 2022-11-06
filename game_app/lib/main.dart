import 'package:flutter/material.dart';
import 'screen_maingame/screen_maingame.dart';
<<<<<<< HEAD
import 'screen_chars/screen_chart.dart';
=======
import 'screen_sign_in/form_sign_in.dart';
>>>>>>> b4bd3451106e53554e9ef13870cdc90d2c21b1a3

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Form_SignIn(),
    );
  }
}
