import 'dart:ui';

import 'package:flutter/material.dart';

class Form_SignIn extends StatefulWidget {
  const Form_SignIn({super.key});

  @override
  State<Form_SignIn> createState() => _MyFormSignIn();
}

class _MyFormSignIn extends State<Form_SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background-home.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.width * 1.5,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffffEEEEEE),
                  child: Column(
                    children: [
                      Row(children: [
                        Expanded(
                            flex: 9,
                            child: Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xffffC0C0C0),
                              child: Image.asset('assets/gear.png'),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xffffC0C0C0),
                              child: Icon(Icons.favorite_border_rounded),
                            ))
                      ]),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 60, 0, 10),
                        height: MediaQuery.of(context).size.width / 6,
                        width: MediaQuery.of(context).size.width / 1.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              colors: [Color(0xfff32e20), Color(0xfc000000)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent), // foreground,
                            onPressed: () {},
                            child: Text(
                              'Sign Up With Email',
                              style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'UTM Aptima',
                                  color: Colors.cyanAccent),
                            )),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 40),
                          height: MediaQuery.of(context).size.width / 6,
                          width: MediaQuery.of(context).size.width / 1.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff000000).withOpacity(0.9),
                                  Color(0xff03a1e9)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              )),
                          child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.facebook,
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor:
                                      Colors.transparent), // foreground,
                              onPressed: () {},
                              label: const Text(
                                'Continue With Facebook',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'UTM Aptima',
                                    color: Colors.white),
                              ))),
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: const Text(
                          'Already have a Oze account?',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Log In With Email or Phone ')))
                    ],
                  ),
                ),
              ),
            )));
  }
}
