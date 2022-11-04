import 'package:flutter/material.dart';
import 'screen_maingame/screen_maingame.dart';
import 'screen_sign_in/form_sign_in.dart';

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
