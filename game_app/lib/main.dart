import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game_app/auth/auth_page.dart';
import 'package:game_app/auth/main_page.dart';
import 'package:game_app/myhomepage.dart';
import 'package:game_app/page/add-pay-method.dart';
import 'package:game_app/screen_friends/screen_friends.dart';
import 'package:game_app/screen_playgame/content_playgame.dart';
import 'package:game_app/user_page/login_page.dart';
import '../screen_playgame/screen_playgame.dart';
import 'package:game_app/screen_shop/screen_shop.dart';
import 'package:game_app/screen_singler_play/screen_singler_play.dart';
import 'screen_maingame/screen_maingame.dart';
import 'screen_sign_in/form_sign_in.dart';
import 'screen_room/screen_room.dart';
import 'screen_setting/screen_seting.dart';
import 'screen_choose_level/screen_choose_level.dart';
import 'screen_solo/screen_solo.dart';
import 'screen_singler_play/screen_singler_play.dart';
import 'screen_play_group/screen_play_group.dart';
import './screen_play_group/screen_play_group.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screen_account/screen_account.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}
