import 'package:flutter/material.dart';

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
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/add-user.png')),
                        shape: BoxShape.circle,
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
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.7),
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(1, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                          'assets/event.png',
                        )),
                        borderRadius: BorderRadius.circular(10),
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
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.7),
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(1, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/store.png')),
                        borderRadius: BorderRadius.circular(10),
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
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.7),
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(1, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                    ),
                  ),
                ),
              ],
            )));
  }
}
