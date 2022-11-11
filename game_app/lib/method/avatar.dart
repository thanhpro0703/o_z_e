import 'package:flutter/material.dart';
Widget AvatarLayout(String urlImageAsset)=>Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(182, 240, 185, 100),
        Color.fromRGBO(225, 143, 232, 100),
      ]
    )
  ),
  child: Image.asset(urlImageAsset,width: 40,),
);
