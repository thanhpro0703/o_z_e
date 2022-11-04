import 'package:flutter/material.dart';

class ScreenMainGame extends StatefulWidget {
  const ScreenMainGame({super.key});

  @override
  State<ScreenMainGame> createState() => _ScreenMainGameState();
}

class _ScreenMainGameState extends State<ScreenMainGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.7, 1.5),
                          colors: <Color>[
                            Color(0xfff9c58d),
                            Color(0xfffa8cff),
                            Color(0xffffebf4f5),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.7),
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(1, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.7, 1.5),
                                    colors: <Color>[
                                      Color(0xff696eff),
                                      Color(0xfffa8cff),
                                      Color(0xffffebf4f5),
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.7),
                                      spreadRadius: 3,
                                      blurRadius: 4,
                                      offset: Offset(
                                          1, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                child: Row(
                                  children: [
                                    Container(
                                        height: 40,
                                        child: Container(
                                          child: Icon(
                                            Icons.favorite_border_rounded,
                                            size: 35,
                                            color: Colors.lightBlueAccent,
                                          ),
                                        )),
                                    Container(
                                        padding:
                                            EdgeInsets.fromLTRB(2, 8, 0, 0),
                                        height: 40,
                                        width: 50,
                                        child: Text(
                                          "FULL",
                                          style: TextStyle(fontSize: 20),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment(0.7, 1.5),
                                      colors: <Color>[
                                        Color(0xfff9ccd3),
                                        Color(0xfffa8cff),
                                        Color(0xffffebf4f5),
                                      ],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)
                                                .withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)
                                                .withOpacity(0.7),
                                        spreadRadius: 3,
                                        blurRadius: 4,
                                        offset: Offset(
                                            1, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.account_circle_sharp,
                                    size: 40,
                                    shadows: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 128, 122, 122)
                                                .withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 8,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.7, 1.5),
                                    colors: <Color>[
                                      Color(0xff696eff),
                                      Color(0xfffa8cff),
                                      Color(0xffffebf4f5),
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.7),
                                      spreadRadius: 3,
                                      blurRadius: 4,
                                      offset: Offset(
                                          1, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                child: Row(
                                  children: [
                                    Container(
                                        height: 40,
                                        child: Icon(
                                          Icons.favorite_border_rounded,
                                          size: 35,
                                          color: Colors.lightBlue,
                                        )),
                                    Container(
                                        padding:
                                            EdgeInsets.fromLTRB(2, 8, 0, 0),
                                        height: 40,
                                        width: 50,
                                        child: Text(
                                          "FULL",
                                          style: TextStyle(fontSize: 20),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: CircleAvatar(
                                backgroundColor: Colors.white10,
                                backgroundImage: AssetImage("assets/gear.png"),
                              ),
                            ),
                          ),
                        ],
                      ))),
              Expanded(
                  flex: 4,
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/background-home.png"),
                          fit: BoxFit.fill,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.7, 1.5),
                          colors: <Color>[
                            Color(0xffff84ffc9),
                            Color(0xffffebf4f5),
                            Color(0xfffff6cfbe),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.7),
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(1, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.7, 1.5),
                                    colors: <Color>[
                                      Color(0xffff95f9c3),
                                      Color(0xff696eff),
                                      Color(0xfffa8cff),
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.7),
                                      spreadRadius: 3,
                                      blurRadius: 4,
                                      offset: Offset(
                                          1, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.all(20),
                                width: 200,
                                child: Text("Play"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.7, 1.5),
                                    colors: <Color>[
                                      Color(0xffff95f9c3),
                                      Color(0xff696eff),
                                      Color(0xfffa8cff),
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.7),
                                      spreadRadius: 3,
                                      blurRadius: 4,
                                      offset: Offset(
                                          1, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.all(20),
                                width: 200,
                                child: Text("Play"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.7, 2),
                                    colors: <Color>[
                                      Color(0xffff95f9c3),
                                      Color(0xff696eff),
                                      Color(0xfffa8cff),
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.7),
                                      spreadRadius: 3,
                                      blurRadius: 4,
                                      offset: Offset(
                                          1, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.all(20),
                                width: 200,
                                child: Text("Play"),
                              ),
                            ),
                          ),
                        ],
                      ))),
              Expanded(
                  flex: 1,
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.7, 1.5),
                          colors: <Color>[
                            Color(0xff696eff),
                            Color(0xfffa8cff),
                            Color(0xffffebf4f5),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.7),
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(1, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                                child: Container(
                              child: Text(
                                "Even",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                                child: Container(
                              child: Text(
                                "Even",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                                child: Container(
                              child: Text(
                                "Even",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                          )
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
