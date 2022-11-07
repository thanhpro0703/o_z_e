import 'dart:ui';
import 'package:flutter/material.dart';

class Screen_Choose_Level extends StatefulWidget {
  const Screen_Choose_Level({super.key});

  @override
  State<Screen_Choose_Level> createState() => _MyScreenChooseLevel();
}

class _MyScreenChooseLevel extends State<Screen_Choose_Level> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/background-home.png"),
        fit: BoxFit.fill,
      )),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  colors: [Color(0xfff32e20), Color.fromARGB(251, 84, 49, 49)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
            child: Center(
                child: Text(
              'Arena',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 26,
              ),
            )),
          )
        ],
      ),
    );
  }
}
