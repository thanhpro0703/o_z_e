import 'dart:ui';
import 'package:flutter/material.dart';

class Screen_Solo extends StatefulWidget {
  const Screen_Solo({super.key});

  @override
  State<Screen_Solo> createState() => _MyScreenChooseLevel();
}

class _MyScreenChooseLevel extends State<Screen_Solo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/background-home.png"),
        fit: BoxFit.fill,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(top: 120)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                Padding(padding: EdgeInsets.only(top: 40)),
                Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: [Color(0xfff32e20), Color(0xff171717)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )),
                    child: Center()),
                Padding(padding: EdgeInsets.only(top: 50)),
                Container(
                    width: MediaQuery.of(context).size.width / 2.6,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffff6633CC).withOpacity(0.7)),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                            Text(
                              'Point: 198',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                            Text(
                              'Rank: 1000',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                          ]),
                    )),
              ]),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('Vs', style: TextStyle(fontSize: 25))),
              Column(children: [
                Padding(padding: EdgeInsets.only(top: 40)),
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  height: 70,
                  child: Image(image: AssetImage('assets/add-user.png')),
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                Container(
                    width: MediaQuery.of(context).size.width / 2.6,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffff6633CC).withOpacity(0.7)),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                            Text(
                              'Point: 198',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                            Text(
                              'Rank: 1000',
                              style: TextStyle(
                                  color: Colors.cyanAccent.withOpacity(0.8),
                                  fontSize: 19),
                            ),
                          ]),
                    )),
              ])
            ],
          )
          // ,
          // Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
          // Container(
          //   width: MediaQuery.of(context).size.width / 2.5,
          //   height: 50,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(50),
          //       gradient: const LinearGradient(
          //         colors: [Color(0xfff32e20), Color(0xff171717)],
          //         begin: Alignment.centerLeft,
          //         end: Alignment.centerRight,
          //       )),
          //   child: Center(
          //     child: Text(
          //       'Arena',
          //       style: TextStyle(
          //         color: Colors.greenAccent,
          //         fontSize: 26,
          //       ),
          //     ),
          //   ),
          // ),

          // Padding(padding: EdgeInsets.only(top: 50)),
          // Container(
          //     width: MediaQuery.of(context).size.width / 2.2,
          //     height: 40,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(50),
          //         color: Color(0xffff6633CC).withOpacity(0.7)),
          //     child: Center(
          //       child: Text(
          //         'Name',
          //         style: TextStyle(
          //             color: Colors.cyanAccent.withOpacity(0.8), fontSize: 19),
          //       ),
          //     )),
          // Padding(padding: EdgeInsets.only(top: 50)),
          // Container(
          //     width: MediaQuery.of(context).size.width / 1.3,
          //     height: 100,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(30),
          //         color: Color(0xffff6633CC).withOpacity(0.7)),
          //     child: Center(
          //       child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               'Rank: 1000',
          //               style: TextStyle(
          //                   color: Colors.cyanAccent.withOpacity(0.8),
          //                   fontSize: 19),
          //             ),
          //             Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
          //             Text(
          //               'Point: 198',
          //               style: TextStyle(
          //                   color: Colors.cyanAccent.withOpacity(0.8),
          //                   fontSize: 19),
          //             )
          //           ]),
          //     )),
          // Padding(padding: EdgeInsets.only(top: 70)),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //         width: MediaQuery.of(context).size.width / 3.5,
          //         height: 50,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(50),
          //             gradient: const LinearGradient(
          //               colors: [Color(0xfff32e20), Color(0xff171717)],
          //               begin: Alignment.centerLeft,
          //               end: Alignment.centerRight,
          //             )),
          //         child: Center(
          //           child: Text(
          //             '3 vs 3',
          //             style: TextStyle(
          //               color: Colors.greenAccent,
          //               fontSize: 26,
          //             ),
          //           ),
          //         )),
          //     Container(
          //         width: MediaQuery.of(context).size.width / 3.5,
          //         height: 50,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(50),
          //             gradient: const LinearGradient(
          //               colors: [Color(0xfff32e20), Color(0xff171717)],
          //               begin: Alignment.centerLeft,
          //               end: Alignment.centerRight,
          //             )),
          //         child: Center(
          //           child: Text(
          //             '1 vs 1',
          //             style: TextStyle(
          //               color: Colors.greenAccent,
          //               fontSize: 26,
          //             ),
          //           ),
          //         )),
          //     Container(
          //         width: MediaQuery.of(context).size.width / 3.5,
          //         height: 50,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(50),
          //             gradient: const LinearGradient(
          //               colors: [Color(0xfff32e20), Color(0xff171717)],
          //               begin: Alignment.centerLeft,
          //               end: Alignment.centerRight,
          //             )),
          //         child: Center(
          //           child: Text(
          //             'Random',
          //             style: TextStyle(
          //               color: Colors.greenAccent,
          //               fontSize: 26,
          //             ),
          //           ),
          //         ))
          //   ],
          // ),
          // Container(
          //   height: 50,
          //   width: 50,
          //   child: Image(image: AssetImage('assets/reply-message.png')),
          // )
        ],
      ),
    );
  }
}
