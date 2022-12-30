import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_app/api_services.dart';
import 'package:game_app/method/avatar.dart';
import 'package:game_app/screen_maingame/header.dart';
import 'package:game_app/screen_room/content_room.dart';
import 'package:game_app/screen_room/footer_room.dart';
import 'package:game_app/screen_sign_in/form_sign_in.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen_account/screen_account.dart';

class TopRank extends StatefulWidget {
  const TopRank({Key? key}) : super(key: key);

  @override
  State<TopRank> createState() => _TopRankState();
}


class _TopRankState extends State<TopRank> {
  static int myRank = 0;
  var users = getUsers();
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      myRank;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.deepPurpleAccent, Colors.cyanAccent])),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(50, 20, 20, 20),
                decoration: const BoxDecoration(
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
                child: Text(
                  'Top Rank',
                  style: GoogleFonts.rubikBeastly(
                    fontSize: 50,
                  ),
                ),
              ),
              Expanded(flex: 4, child: _listTopRank()),

              FutureBuilder(
                  future: totalScore(FirebaseAuth.instance.currentUser!.email!),
                  builder:(context,snapshot){
                    return itemsList("pigbed.png", FirebaseAuth.instance.currentUser!.email,snapshot.data.toString(), myRank);
                  }),

              MyFooterRoom()
            ],
          ),
        ),
      ),
    );
  }

  Widget _listTopRank() => Container(
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
                ])),
        child: FutureBuilder(
          future: getUsers(),
          builder:(context,snapshot){
            if(snapshot.data == null || !snapshot.hasData){
              return  Container(
                width: MediaQuery.of(context).size.width,
                padding:const EdgeInsets.all(150),
                child:const CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                int reverseIndex = snapshot.data!.length - 1 - index;
                if(snapshot.data![reverseIndex].username == FirebaseAuth.instance.currentUser!.email){
                  myRank = index +1;

                }
                return  itemsList("pigbed.png", snapshot.data![reverseIndex].username, snapshot.data![reverseIndex].rank.toString(),index+1);
              },
            );
          }
        ),
      );

  Widget itemsList(avatar, name, grade,topRank) => TextButton(
      onPressed: () {
        // chuyển hướng sang trang xem thông tin cá nhân
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Screen_Acount(username: name,)));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
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
                avatarTopRank("assets/${avatar}",topRank),
                SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: GoogleFonts.akayaTelivigala(
                      fontStyle: FontStyle.italic, fontSize: 25),
                ),
              ],
            ),
            Text(
              grade,
              style: GoogleFonts.lobster(),
            ),
          ],
        ),
      ));
}
