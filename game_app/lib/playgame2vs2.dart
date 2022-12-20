import 'package:flutter/material.dart';

class PlayGamePage extends StatefulWidget {
  PlayGamePage({super.key, required this.room, required this.username});
  String room;
  String username;
  @override
  State<PlayGamePage> createState() => _PlayGamePageState();
}

class _PlayGamePageState extends State<PlayGamePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
