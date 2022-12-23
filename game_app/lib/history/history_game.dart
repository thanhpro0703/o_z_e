import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/api_services.dart';
import 'package:game_app/screen_room/footer_room.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatefulWidget {
  const History({Key? key, required this.username}) : super(key: key);

  final String username;
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
                decoration: const BoxDecoration(
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Result",
                        style: GoogleFonts.akayaTelivigala(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.systemYellow)),
                    Text(
                      "Point",
                      style: GoogleFonts.akayaTelivigala(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.systemIndigo),
                    ),
                    Text(
                      "Rank",
                      style: GoogleFonts.akayaTelivigala(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.activeOrange),
                    ),
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

  Widget _listHistory() => FutureBuilder(
      future: history(widget.username),
      builder: (context, snapshot) {
        if (snapshot.data == null || !snapshot.hasData) {
          return Container(
            padding: const EdgeInsets.all(150),
            child: const CircularProgressIndicator(
              semanticsLabel: "Loading...",
            ),
          );
        }
        return Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xfff1f1c18),
                  Color(0xffff8e0e00),
                ])),
            child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return itemsList(
                    snapshot.data![index].result!,
                    snapshot.data![index].totalPoint!.toString(),
                    snapshot.data![index].point!.toString(),
                  );
                }));
      });

  itemsList(String result, String point, String rank) {

    if(result == "null/null"){
      return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           const CircularProgressIndicator(),
            Row(
              children: [
                const Text(
                  '+',
                  style: TextStyle(color: Colors.green),
                ),
                Text(
                  " ${rank}",
                  style: GoogleFonts.akayaTelivigala(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.systemIndigo),
                ),
              ],
            ),
            Text(
              point,
              style: GoogleFonts.akayaTelivigala(
                  fontSize: 30, color: CupertinoColors.activeOrange),
            ),
          ],
        ),
      );
    }

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(result,
              style: GoogleFonts.akayaTelivigala(
                  fontSize: 30, color: CupertinoColors.systemYellow)),
          Row(
            children: [
              const Text(
                '+',
                style: TextStyle(color: Colors.green),
              ),
              Text(
                " ${rank}",
                style: GoogleFonts.akayaTelivigala(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.systemIndigo),
              ),
            ],
          ),
          Text(
            point,
            style: GoogleFonts.akayaTelivigala(
                fontSize: 30, color: CupertinoColors.activeOrange),
          ),
        ],
      ),
    );
  }
}
