import 'package:flutter/material.dart';
import 'package:game_app/screen_room/content_room.dart';
import 'package:game_app/screen_room/footer_room.dart';
import '../screen_maingame/header.dart';
import '../screen_maingame/footer.dart';

class ScreenRoom extends StatefulWidget {
  const ScreenRoom({super.key});

  @override
  State<ScreenRoom> createState() => _ScreenRoomState();
}

class _ScreenRoomState extends State<ScreenRoom> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [MyHeader(), MyContentRoom(), MyFooterRoom()],
          ),
        ),
      ),
    );
  }
}
