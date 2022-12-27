import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_app/api_services.dart';
import 'package:game_app/history/history_game.dart';

import 'package:game_app/method/avatar.dart';
import 'package:game_app/screen_account/screen_account.dart';
import 'package:google_fonts/google_fonts.dart';

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
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.deepPurpleAccent, Colors.cyanAccent])),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search friends",
                          fillColor: Colors.blueGrey,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                          ),
                        ),
                        onChanged: (text){
                          text=text.toLowerCase();

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.search),
                          )),
                    )
                  ],
                ),
              ),
              Expanded(flex: 4, child: _listFriend()),
            ],
          ),
        ));
  }


  _listFriend() => FutureBuilder(
    future: getUsers(),
    builder: (context, snapshot) {
      if(snapshot.data == null || !snapshot.hasData){
        return const Padding(
          padding: EdgeInsets.all(150.0),
          child: CircularProgressIndicator(),
        );
      }
      return ListView.builder(
        itemCount: snapshot.data!.length,
          itemBuilder: (context,index){
          if(snapshot.data![index].username == FirebaseAuth.instance.currentUser!.email){
            return const Text('');
          }
        return  _friend(
            const AvatarButton(
              urlImage: 'assets/pigbed.png',
              size: 30,
            ),
            snapshot.data![index].username!,
            snapshot.data![index].rank.toString(),
        );
      });
    },

  );
  _friend(avatar, username, rank) => Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            avatar,
            Text(
              username,
              style: const TextStyle(fontSize: 20, color: Colors.yellow,fontWeight: FontWeight.bold),
            ),
            Text(rank,style: const TextStyle(fontSize: 20,color: Colors.greenAccent,fontWeight: FontWeight.bold),),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen_Acount(username: username,)));
                }, icon: const Icon(Icons.remove_red_eye_outlined,))
          ],
        ),
      );
}
