import 'dart:ui';
import 'package:flutter/material.dart';

class Screen_Team extends StatefulWidget {
  const Screen_Team({super.key});

  @override
  State<Screen_Team> createState() => _MyScreen_Team();
}

class _MyScreen_Team extends State<Screen_Team> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/background-home.png"),
        fit: BoxFit.fill,
      )),
      child: Row(children: [
        Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 6,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Color(0xfff32e20), Color(0xff171717)],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    )),
                child: Center()),
          ],
        ),
        Text('VS'),
        Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 6,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Color(0xfff32e20), Color(0xff171717)],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    )),
                child: Center()),
          ],
        )
      ]),
    );
  }
}
