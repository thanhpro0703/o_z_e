import 'package:flutter/material.dart';
import '../screen_maingame/screen_maingame.dart';

class MyFooterRoom extends StatefulWidget {
  const MyFooterRoom({super.key});

  @override
  State<MyFooterRoom> createState() => _MyFooterRoomState();
}

class _MyFooterRoomState extends State<MyFooterRoom> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/footer.jpg'), fit: BoxFit.cover),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            blurRadius: 5.0)
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.7, 1.5),
                        colors: <Color>[
                          Color(0xffff8e0e00),
                          Color(0xfff1f1c18),
                        ],
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
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
                            Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => ScreenMainGame(),
                            ));
                          },
                          child: Image.asset(
                            'assets/reply-message.png',
                            width: 45,
                            height: 45,
                          )),
                    ),
                  ),
                ),
                ButtonFooterWidget(
                    buttonfooter: ElavetedButon(
                  text: "RANDOM",
                  page: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenMainGame(),
                    ));
                  },
                )),
                ButtonFooterWidget(
                    buttonfooter: ElavetedButon(
                        text: "3 VS 3",
                        page: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScreenMainGame(),
                          ));
                        }))
              ],
            )));
  }
}

class ElavetedButon extends StatefulWidget {
  const ElavetedButon({super.key, required this.text, required this.page});
  final String text;
  final page;

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
        minimumSize: MaterialStateProperty.all(Size(120, 60)),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        // elevation: MaterialStateProperty.all(3),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: widget.page,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 18,
            // fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ButtonFooterWidget extends StatefulWidget {
  const ButtonFooterWidget({super.key, required this.buttonfooter});
  final Widget buttonfooter;
  @override
  State<ButtonFooterWidget> createState() => _ButtonFooterWidgetState();
}

class _ButtonFooterWidgetState extends State<ButtonFooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.7, 1.5),
              colors: <Color>[
                Color(0xffff8e0e00),
                Color(0xfff1f1c18),
              ],
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget.buttonfooter),
    );
  }
}
