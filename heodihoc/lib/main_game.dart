import 'package:flutter/material.dart';
import 'package:heodihoc/widget_play.dart';

class Main_game extends StatefulWidget {
  const Main_game({super.key});

  @override
  State<Main_game> createState() => _Main_gameState();
}

class _Main_gameState extends State<Main_game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(116, 196, 218, 224),
              Color.fromARGB(255, 166, 233, 236),
              Color.fromARGB(255, 199, 211, 210),
              Color.fromARGB(255, 235, 171, 171),
              Color.fromARGB(255, 219, 121, 121),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        /* decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/h1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        */
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.volume_down_alt,
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.blue,
                      ),
                    ),
                    Container(child: Text('9999')),
                    Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    Container(child: Text('9999')),
                    Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.blue[200],
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(""),
                ),
                Container(
                  color: Colors.blue[400],
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(""),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 5,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 231, 226, 226),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.5),
                            spreadRadius: 7,
                            blurRadius: 9,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "HEO ĐI HỌC",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.help)
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: AssetImage("assets/pig_1.png"),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Wiget_Play(),
                            Wiget_Play(),
                            Wiget_Play(),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WidgetButton(
                            img: 'home.png',
                            text: 'HOME',
                          ),
                          WidgetButton(
                            img: 'trust.png',
                            text: 'FRIENDS',
                          ),
                          WidgetButton(
                            img: 'shopping-basket.png',
                            text: 'SHOP',
                          ),
                          WidgetButton(
                            img: 'podium.png',
                            text: 'BXH',
                          ),
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
