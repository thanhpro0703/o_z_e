import 'package:flutter/material.dart';
import '../screen_room/footer_room.dart';

class MyFooter extends StatefulWidget {
  const MyFooter({super.key});

  @override
  State<MyFooter> createState() => _MyFooterState();
}

class _MyFooterState extends State<MyFooter> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/footer.jpg'), fit: BoxFit.cover),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.7, 1.5),
                colors: <Color>[
                  Color(0xff696eff),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
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
                      child: ElavetedButon(text: "FRIENDS")),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
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
                      child: ElavetedButon(text: "EVENT")),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
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
                      child: ElavetedButon(text: "SHOP")),
                ),
              ],
            )));
  }
}
