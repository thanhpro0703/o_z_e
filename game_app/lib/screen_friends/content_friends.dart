import 'package:flutter/material.dart';

class MyContentFriends extends StatefulWidget {
  const MyContentFriends({super.key});

  @override
  State<MyContentFriends> createState() => _MyContentFriendsState();
}

class _MyContentFriendsState extends State<MyContentFriends> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Container(
            width: double.infinity,
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
                  Color(0xfffff6cfbe),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.limeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                borderRadius: BorderRadius.circular(20),
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
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    minimumSize:
                                        MaterialStateProperty.all(Size(50, 50)),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    // elevation: MaterialStateProperty.all(3),
                                  ),
                                  onPressed: () {},
                                  child: Icon(Icons.search)),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 1.5,
                          child: ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.pinkAccent,
                                  child: Text("data"),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
