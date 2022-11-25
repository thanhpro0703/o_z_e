import 'package:flutter/material.dart';
import 'package:game_app/method/avatar.dart';
import 'package:game_app/screen_maingame/header.dart';
import 'package:game_app/screen_room/content_room.dart';
import 'package:game_app/screen_room/footer_room.dart';
import 'package:game_app/screen_sign_in/form_sign_in.dart';
import 'package:google_fonts/google_fonts.dart';

class TopRank extends StatefulWidget {
  const TopRank({Key? key}) : super(key: key);

  @override
  State<TopRank> createState() => _TopRankState();
}

class _TopRankState extends State<TopRank> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.cyanAccent
                  ]
              )
          ),
          child: Column(
            children: [

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(50, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(0),
                    bottom: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.7, 1.5),
                    colors: <Color>[
                      Color(0xfff1f1c18),
                      Color(0xffff8e0e00),
                    ],
                  ),
                ),
                child: Text('Top Rank',style: GoogleFonts.rubikBeastly(fontSize: 50,),),
              ),
              Expanded(flex: 4,child: _listTopRank()),
              itemsList("pigbed.png", "MyName", "0"),
              MyFooterRoom()],
          ),
        ),
      ),
    );
  }
  Widget _listTopRank()=>Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
          bottom: Radius.circular(0),
        ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xfff1f1c18),
              Color(0xffff8e0e00),
            ]
        )
    ),
    child: ListView(
      children: [
        itemsList("pigbed.png", "Name", "1233"),
        itemsList("pigbed.png", "Name", "1233"),
        itemsList("pigbed.png", "Name", "1233"),
        itemsList("pigbed.png", "Name", "1233"),
        itemsList("pigbed.png", "Name", "1233"),
        itemsList("pigbed.png", "Name", "1233"),
        itemsList("pigbed.png", "Name", "1233"),
        itemsList("pigbed.png", "Name", "1233"),
      ],
    ),
  );

  Widget itemsList(avatar, name, grade)=>TextButton(onPressed: (){
    // chuyển hướng sang trang xem thông tin cá nhân
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Form_SignIn()));},

      child: Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),

    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment(0.7, 1.5),
        colors: <Color>[
          Color(0xfff9c58d),
          Color(0xfffa8cff),
          Color(0xffffebf4f5),
        ],

      ),
      borderRadius: BorderRadius.all(Radius.circular(15)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AvatarLayout("assets/${avatar}"),
            SizedBox(width: 10,),
            Text(name,style: GoogleFonts.dancingScript(fontStyle:FontStyle.italic,fontSize: 30),),
          ],
        ),
        Text(grade, style: GoogleFonts.lobster(),),
      ],
    ),
  ));

}

