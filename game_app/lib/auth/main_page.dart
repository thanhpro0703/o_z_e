// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:game_app/auth/auth_page.dart';
// import 'package:game_app/user_page/login_page.dart';
// import 'package:game_app/screen_maingame/screen_maingame.dart';

// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ScreenMainGame();
//           } else
//             return AuthPage();
//         },
//       ),
//     );
//   }
// }
