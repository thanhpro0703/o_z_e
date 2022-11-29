import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ButtonGreen(Object action(), String text) => Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(1, 2, 0, 100),
                Color.fromRGBO(23, 191, 97, 100),
              ])),
      child: ElevatedButton(
        onPressed: action,
        child: Text(
          text,
          style:
              GoogleFonts.alegreya(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent, shadowColor: Colors.transparent),
      ),
    );
