import 'package:flutter/material.dart';

class PageQuestion3 extends StatefulWidget {
  const PageQuestion3({super.key});

  @override
  State<PageQuestion3> createState() => _PageQuestion3State();
}

class _PageQuestion3State extends State<PageQuestion3> {
  bool ButtonPressed1 = false;
  bool ButtonPressed2 = false;
  bool ButtonPressed3 = false;
  bool ButtonPressed4 = false;
  void _Pressed1() {
    setState(() {
      ButtonPressed1 = true;
      ButtonPressed2 = false;
      ButtonPressed3 = false;
      ButtonPressed4 = false;
    });
  }

  void _Pressed2() {
    setState(() {
      ButtonPressed2 = true;
      ButtonPressed1 = false;
      ButtonPressed3 = false;
      ButtonPressed4 = false;
    });
  }

  void _Pressed3() {
    setState(() {
      ButtonPressed3 = true;
      ButtonPressed1 = false;
      ButtonPressed2 = false;
      ButtonPressed4 = false;
    });
  }

  void _Pressed4() {
    setState(() {
      ButtonPressed4 = true;
      ButtonPressed1 = false;
      ButtonPressed3 = false;
      ButtonPressed2 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 4,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(child: Text("Title")),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Container(child: Text("Question")),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 4,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: GestureDetector(
                                      onTap: _Pressed1,
                                      child: ButtonPressed1
                                          ? ButtonPlayWidgetTapped()
                                          : ButtonPlayWidget())),
                              Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: GestureDetector(
                                      onTap: _Pressed2,
                                      child: ButtonPressed2
                                          ? ButtonPlayWidgetTapped()
                                          : ButtonPlayWidget())),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: GestureDetector(
                                      onTap: _Pressed3,
                                      child: ButtonPressed3
                                          ? ButtonPlayWidgetTapped()
                                          : ButtonPlayWidget())),
                              Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: GestureDetector(
                                      onTap: _Pressed4,
                                      child: ButtonPressed4
                                          ? ButtonPlayWidgetTapped()
                                          : ButtonPlayWidget())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ElavetedButonPlay extends StatefulWidget {
  const ElavetedButonPlay({super.key, required this.text, required this.page});
  final String text;
  final page;

  @override
  State<ElavetedButonPlay> createState() => _ElavetedButonPlayState();
}

class _ElavetedButonPlayState extends State<ElavetedButonPlay> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(150, 40)),
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

class ButtonPlayWidget extends StatefulWidget {
  const ButtonPlayWidget({super.key});

  @override
  State<ButtonPlayWidget> createState() => _ButtonPlayWidgetState();
}

class _ButtonPlayWidgetState extends State<ButtonPlayWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0)
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.grey.shade200,
                Colors.grey.shade300,
                Colors.grey.shade400,
                Colors.grey.shade500,
              ],
              stops: [
                0,
                0.1,
                0.3,
                1
              ]),
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(Icons.favorite_border),
      ),
    );
  }
}

class ButtonPlayWidgetTapped extends StatefulWidget {
  const ButtonPlayWidgetTapped({
    super.key,
  });

  @override
  State<ButtonPlayWidgetTapped> createState() => _ButtonPlayWidgetTappedState();
}

class _ButtonPlayWidgetTappedState extends State<ButtonPlayWidgetTapped> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.white,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0)
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.grey.shade700,
                Colors.grey.shade600,
                Colors.grey.shade500,
                Colors.grey.shade200,
              ],
              stops: [
                0,
                0.1,
                0.3,
                1
              ]),
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          Icons.favorite_border,
          size: 30,
        ),
      ),
    );
  }
}
