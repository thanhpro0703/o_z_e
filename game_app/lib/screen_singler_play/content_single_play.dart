import 'package:flutter/material.dart';
import '../button_game/button_game.dart';

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
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/background-levels.jpg",
                  ),
                  fit: BoxFit.fill)),
          child: Expanded(
            child: ListView.builder(
                addAutomaticKeepAlives: true,
                addSemanticIndexes: true,
                cacheExtent: 10,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                primary: true,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: ((context, index) {
                  return MySquare();
                })),
          )),
    );
  }
}

class MySquare extends StatefulWidget {
  const MySquare({super.key});

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {
  double w = 100;
  double h = 100;
  double widthC = 50;
  double heightC = 50;
  double widthCC = 50;
  double heightCC = 50;
  bool isVisible1 = true;
  bool isVisible2 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        curve: Curves.easeInOutCirc,
        duration: Duration(milliseconds: 900),
        decoration: BoxDecoration(
            color: Colors.cyanAccent, borderRadius: BorderRadius.circular(20)),
        width: w,
        height: h,
        child: Center(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Visibility(
                  visible: isVisible1,
                  maintainAnimation: true,
                  maintainSize: true,
                  maintainState: true,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        w = 400;
                        h = 300;
                        isVisible1 = false;
                        isVisible2 = true;
                        widthC = 250;
                        heightC = 220;
                        widthCC = 70;
                        heightCC = 20;
                      });
                    },
                    child: Text("Cửa 1"),
                  ),
                ),
              ),
              Visibility(
                visible: isVisible2,
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(30)),
                      width: widthC,
                      height: heightC,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.vertical,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ButtonWidget(
                                          button: ElavetedButon(
                                        page: () {},
                                        text: "-",
                                      )),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ButtonWidget(
                                          button: ElavetedButon(
                                        page: () {},
                                        text: "+",
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 250,
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ButtonWidget(
                                  button: ElavetedButon(
                                page: () {},
                                text: "Chọn chủ đề",
                              )),
                            ),
                          ),
                          Container(
                            width: 120,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ButtonWidget(
                                  button: ElavetedButon(
                                page: () {},
                                text: "Play",
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: isVisible2,
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        w = 100;
                        h = 100;
                        isVisible1 = true;
                        isVisible2 = false;
                        widthC = 50;
                        heightC = 50;
                      });
                    },
                    icon: Icon(
                      Icons.close,
                      size: 30,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MySquare2 extends StatefulWidget {
  const MySquare2({super.key});

  @override
  State<MySquare2> createState() => _MySquare2State();
}

class _MySquare2State extends State<MySquare2> {
  double w = 200;
  double h = 100;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 900),
        curve: Curves.easeOutBack,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 253, 52),
            borderRadius: BorderRadius.circular(20)),
        width: w,
        height: h,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 3,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      w = 400;
                      h = 130;
                    });
                  },
                  child: Text("Cửa 2"),
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      w = 200;
                      h = 100;
                    });
                  },
                  icon: Icon(
                    Icons.close,
                    size: 30,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class MySquare3 extends StatefulWidget {
  const MySquare3({super.key});

  @override
  State<MySquare3> createState() => _MySquare3State();
}

class _MySquare3State extends State<MySquare3> {
  double w = 200;
  double h = 100;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 900),
        curve: Curves.easeInOutCubicEmphasized,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 253, 52, 169),
            borderRadius: BorderRadius.circular(20)),
        width: w,
        height: h,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 3,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      w = 400;
                      h = 130;
                    });
                  },
                  child: Text("Cửa 2"),
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      w = 200;
                      h = 100;
                    });
                  },
                  icon: Icon(
                    Icons.close,
                    size: 30,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
