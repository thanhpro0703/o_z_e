import 'package:flutter/material.dart';
import 'package:game_app/screen_friends/content_friends.dart';
import 'package:game_app/screen_maingame/content.dart';
import 'package:game_app/screen_maingame/footer.dart';
import 'package:game_app/screen_maingame/header.dart';
import 'package:game_app/screen_singler_play/myfootersingleplay.dart';

class ScreenFriends extends StatefulWidget {
  const ScreenFriends({super.key});

  @override
  State<ScreenFriends> createState() => _ScreenFriendsState();
}

class _ScreenFriendsState extends State<ScreenFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [MyHeader(), MyContentFriends(), MyFooterSinglePlay()],
          ),
        ),
      ),
    );
  }
}
