import 'package:flutter/material.dart';

class MyContentSinglePlay extends StatefulWidget {
  const MyContentSinglePlay({super.key});

  @override
  State<MyContentSinglePlay> createState() => _MyContentSinglePlayState();
}

class _MyContentSinglePlayState extends State<MyContentSinglePlay> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background-levels.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 212, 18, 34),
                    ),
                    margin: EdgeInsets.only(top: 90, right: 120),
                    child: Icon(
                      Icons.star,
                      size: 35,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amberAccent,
                    ),
                    margin: EdgeInsets.only(top: 10, left: 300),
                    child: Icon(
                      Icons.star,
                      size: 35,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 10, color: Colors.white),
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 241, 120, 20),
                    ),
                    margin: EdgeInsets.only(top: 60, right: 120),
                    child: Icon(
                      Icons.star,
                      size: 35,
                    ),
                  )
                ],
              ),
            )));
  }
}
