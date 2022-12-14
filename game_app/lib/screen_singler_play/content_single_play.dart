import 'package:flutter/material.dart';
import 'package:game_app/model/dbcontext.dart';
import 'package:game_app/model/entry.dart';
import 'package:game_app/screen_playgame/screen_playgame.dart';
import '../button_game/button_game.dart';

class MyContentSinglePlay extends StatefulWidget {
  const MyContentSinglePlay({
    super.key,
  });

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
                itemCount: ListDbPlayLevels.listPlayLevels.length,
                itemBuilder: ((context, index) {
                  return MySquare(
                    playlevel: ListDbPlayLevels.listPlayLevels[index],
                  );
                })),
          )),
    );
  }
}

class MySquare extends StatefulWidget {
  const MySquare({super.key, required this.playlevel});
  final PlayLevels playlevel;
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
                    child: Row(
                      children: [
                        Text(widget.playlevel.Level),
                      ],
                    ),
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
                                text: widget.playlevel.Topic,
                              )),
                            ),
                          ),
                          Container(
                            width: 120,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ButtonWidget(
                                  button: ElavetedButon(
                                page: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ScreenPlayGame(
                                        level: widget.playlevel.Level),
                                  ));
                                },
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
