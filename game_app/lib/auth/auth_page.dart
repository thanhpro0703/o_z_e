import 'package:flutter/material.dart';
import 'package:game_app/user_page/login_page.dart';
import 'package:game_app/user_page/regsister.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  void toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage == true) {
      return LoginPage(showRegisterPage: toggleScreen);
    } else {
      return RegisterPage(showLoginPage: toggleScreen);
    }
  }
}
