import 'package:flutter/material.dart';

class MyContentSinglePlay extends StatefulWidget {
  const MyContentSinglePlay({super.key});

  @override
  State<MyContentSinglePlay> createState() => _MyContentSinglePlayState();
}

class _MyContentSinglePlayState extends State<MyContentSinglePlay> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background-levels.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            )));
  }
}
