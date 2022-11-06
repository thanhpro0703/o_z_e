import 'package:flutter/material.dart';
import 'package:game_app/model/entry.dart';
import "database_chart.dart";
import '../model/dbcontext.dart';
import 'footer_chart.dart';

class MyContentCharts extends StatefulWidget {
  const MyContentCharts({super.key});

  @override
  State<MyContentCharts> createState() => _MyContentChartsState();
}

class _MyContentChartsState extends State<MyContentCharts> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 40),
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
              Color(0xffffffcdc),
              Color(0xfffff6cfbe),
              Color(0xfff8ca6db),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(2, 2),
                          colors: <Color>[
                            Color(0xfffece9e6),
                            Color(0xffffffcdc),
                          ],
                        ),
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(2, 2),
                            colors: <Color>[
                              Color(0xfffece9e6),
                              Color(0xfff8ca6db),
                              Color(0xffffffcdc),
                              Color(0xfffffedbc),
                            ],
                          ),
                        ),
                        child: IconButton(
                            onPressed: (() {}),
                            icon: Icon(
                              Icons.search,
                              size: 30,
                            )))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 420,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.7, 1.5),
                    colors: <Color>[
                      Color(0xfff304352),
                      Color(0xfff304352),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.7, 1.5),
                          colors: <Color>[
                            Color(0xfff003973),
                            Color(0xfffe5e5be),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(child: TextHeader(text: "ID")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(child: TextHeader(text: "Subject")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(child: TextHeader(text: "Grade")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(child: TextHeader(text: "Amount")),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: ListView.builder(
                          itemCount: ListDB.listDb.length,
                          itemBuilder: ((context, index) {
                            return DatabaseChart(entry: ListDB.listDb[index]);
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextHeader extends StatelessWidget {
  const TextHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 20, color: Colors.greenAccent, fontWeight: FontWeight.bold),
    );
  }
}
