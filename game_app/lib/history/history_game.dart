import 'package:flutter/material.dart';
import 'package:game_app/screen_room/footer_room.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.deepPurpleAccent, Colors.cyanAccent])),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(50, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(0),
                    bottom: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.7, 1.5),
                    colors: <Color>[
                      Color(0xfff1f1c18),
                      Color(0xffff8e0e00),
                    ],
                  ),
                ),
                child: Text('HISTORY',
                    style: GoogleFonts.rubikBeastly(
                        color: Colors.yellow,
                        fontSize: 60,
                        fontStyle: FontStyle.italic)),
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xfff1f1c18),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                    bottom: Radius.circular(0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Result",
                        style: GoogleFonts.rubikBeastly(color: Colors.yellow)),
                    Text("Support",
                        style: GoogleFonts.rubikBeastly(color: Colors.yellow)),
                    Text(
                      "Rank",
                      style: GoogleFonts.rubikBeastly(color: Colors.yellow),
                    ),
                    Row(
                      children: [
                        Text(
                          "Point",
                          style: GoogleFonts.rubikBeastly(
                              color: Colors.greenAccent),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(flex: 4, child: _listHistory()),
              MyFooterRoom()
            ],
          ),
        ),
      ),
    );
  }

  Widget _listHistory() => Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xfff1f1c18),
              Color(0xffff8e0e00),
            ])),
        child: ListView(
          children: [
            itemsList("Win", "Name", "1233", "+45"),
            itemsList("Loss", "Name", "123", "-45"),
            itemsList("Win", "Name", "1233", "+45"),
            itemsList("Loss", "Name", "123", "-45"),
            itemsList("Win", "Name", "1233", "+45"),
            itemsList("Loss", "Name", "123", "-45"),
            itemsList("Win", "Name", "1233", "+45"),
            itemsList("Loss", "Name", "123", "-45"),
            itemsList("Win", "Name", "1233", "+45"),
            itemsList("Loss", "Name", "123", "-45"),
          ],
        ),
      );
  itemsList(String result, String support, String point, String rank) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(result,
              style:
                  GoogleFonts.rubikBeastly(color: Colors.yellow, fontSize: 20)),
          Row(
            children: [
              Icon(
                Icons.add,
                color: Colors.yellow,
              ),
              Icon(
                Icons.add,
                color: Colors.yellow,
              ),
            ],
          ),
          Text(
            point,
            style: GoogleFonts.rubikBeastly(color: Colors.yellow),
          ),
          Row(
            children: [
              Text(
                " ${rank}",
                style: GoogleFonts.rubikBeastly(color: Colors.greenAccent),
              ),
            ],
          )
        ],
      ),
    );
  }
}
