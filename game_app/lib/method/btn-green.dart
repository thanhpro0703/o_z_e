import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ButtonGreen(action, String text) => Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffff8e0e00),
                Color(0xfff1f1c18),
              ])),
      child: TextButton(
        onPressed: action,
        child: Text(
          text,
          style: GoogleFonts.alegreya(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      ),
    );
