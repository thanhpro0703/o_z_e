import 'package:flutter/material.dart';
import 'package:game_app/button_game/button_game.dart';

class PageWin extends StatefulWidget {
  const PageWin({super.key});

  @override
  State<PageWin> createState() => _PageWinState();
}

class _PageWinState extends State<PageWin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xffca485c),
                  Color(0xffe16b5c),
                  Color(0xfff39060),
                  Color(0xffffb56b),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Text(
                        "YOU WIN",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "RANK 966",
                      style: TextStyle(color: Colors.lightGreen, fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Text(
                      "POIN +59",
                      style: TextStyle(color: Colors.lightGreen, fontSize: 20),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ButtonWidget(
                          button: ElavetedButon(
                        page: () {},
                        text: "OK",
                      )),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
