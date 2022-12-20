import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenInfoEnemy extends StatefulWidget {
  const ScreenInfoEnemy({super.key});

  @override
  State<ScreenInfoEnemy> createState() => _ScreenInfoEnemyState();
}

class _ScreenInfoEnemyState extends State<ScreenInfoEnemy> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background-home.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: MediaQuery.of(context).size.width / 1.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                Color.fromARGB(255, 5, 87, 107),
                Color.fromARGB(255, 10, 224, 213),
              ],
            ),
          ),
          child: Column(children: [
            Image.asset(
              "assets/pigmessage.png",
              width: 50,
              height: 50,
            )
          ]),
        ),
      ]),
    ));
  }
}
