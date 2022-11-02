import 'package:flutter/material.dart';
import 'package:heodihoc/main_game.dart';
import 'package:heodihoc/main_game_personal.dart';

class Wiget_Play extends StatefulWidget {
  const Wiget_Play({super.key});

  @override
  State<Wiget_Play> createState() => _Wiget_PlayState();
}

class _Wiget_PlayState extends State<Wiget_Play> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/pig_1.png"),
                fit: BoxFit.cover,
              ),
              color: Colors.pink[200],
              borderRadius: BorderRadius.circular(8)),
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 13,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListTile(
                title: Text(
                  "P L A Y",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 239, 239),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Main_game_personal()));
                }),
          )),
    );
  }
}

class WidgetButton extends StatelessWidget {
  const WidgetButton({super.key, required this.img, required this.text});
  final String img;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.height / 8.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 11.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/$img",
                      ),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: ListTile(onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Main_game()));
                }),
              ),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
