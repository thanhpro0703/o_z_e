import 'package:flutter/material.dart';

class ScreenSolo extends StatefulWidget {
  const ScreenSolo(
      {super.key, required this.username1, required this.roomname});
  final username1;
  final roomname;
  @override
  State<ScreenSolo> createState() => _ScreenSoloState();
}

class _ScreenSoloState extends State<ScreenSolo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rooom Game'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Center(
                  child: Text(
                "Solo Heart",
                style: TextStyle(fontSize: 50),
              )),
              Center(
                  child: Text(
                "Room Name : ${widget.roomname}",
                style: TextStyle(fontSize: 30),
              )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.red,
                      child: Text(widget.username1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Color.fromARGB(255, 138, 204, 33),
                      child: Text("useetr2"),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
