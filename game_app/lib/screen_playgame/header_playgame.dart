import 'package:flutter/material.dart';
import 'package:game_app/screen_setting/screen_seting.dart';

class MyHeaderPlayGame extends StatefulWidget {
  const MyHeaderPlayGame({super.key});

  @override
  State<MyHeaderPlayGame> createState() => _MyHeaderPlayGameState();
}

class _MyHeaderPlayGameState extends State<MyHeaderPlayGame> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
            BoxShadow(
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
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
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 70,
                child: Expanded(
                  flex: 1,
                  child: ButtonHeaderWidget(
                    buttonheader: ElavetedButon(text: "A"),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 70,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.7, 1.5),
                      colors: <Color>[
                        Color(0xffff8e0e00),
                        Color(0xfff1f1c18),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(100, 40)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        // elevation: MaterialStateProperty.all(3),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("5"),
                          Text(":"),
                          Text("5"),
                        ],
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 70,
                child: Expanded(
                  flex: 1,
                  child: ButtonHeaderWidget(
                    buttonheader: ElavetedButon(text: "A"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                  flex: 1,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.7, 1.5),
                        colors: <Color>[
                          Color(0xffff8e0e00),
                          Color(0xfff1f1c18),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            blurRadius: 5.0)
                      ],
                    ),
                    child: Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            minimumSize:
                                MaterialStateProperty.all(Size(100, 60)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ScreenSetting(),
                            ));
                          },
                          child: Image.asset(
                            'assets/settings.png',
                          )),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class ElavetedButon extends StatefulWidget {
  const ElavetedButon({super.key, required this.text});
  final String text;

  @override
  State<ElavetedButon> createState() => _ElavetedButonState();
}

class _ElavetedButonState extends State<ElavetedButon> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        elevation: MaterialStateProperty.all(3),
        shadowColor:
            MaterialStateProperty.all(Colors.transparent.withAlpha(80)),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                child: Icon(
                  Icons.favorite_border_rounded,
                  size: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            Container(child: Text(widget.text)),
          ],
        ),
      ),
    );
  }
}

class ButtonHeaderWidget extends StatefulWidget {
  const ButtonHeaderWidget({super.key, required this.buttonheader});
  final Widget buttonheader;
  @override
  State<ButtonHeaderWidget> createState() => _ButtonHeaderWidget();
}

class _ButtonHeaderWidget extends State<ButtonHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Expanded(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.7, 1.5),
                colors: <Color>[
                  Color(0xffff70e1f5),
                  Color(0xffffffd194),
                ],
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 5.0)
              ],
            ),
            child: widget.buttonheader),
      ),
    );
  }
}
