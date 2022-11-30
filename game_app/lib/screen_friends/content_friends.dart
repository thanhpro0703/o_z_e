import 'package:flutter/material.dart';

import 'package:game_app/method/avatar.dart';
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
              Expanded(flex: 4, child: _listFrends()),
            ],
          ),
        ));
  }

  _listFrends() => ListView(
        children: [
          _frend(
              AvatarButton(
                urlImage: 'assets/pigbed.png',
                size: 30,
              ),
              'name',
              'rank'),
          _frend(
              AvatarButton(
                urlImage: 'assets/pigbed.png',
                size: 30,
              ),
              'name',
              'rank'),
          _frend(
              AvatarButton(
                urlImage: 'assets/pigbed.png',
                size: 30,
              ),
              'name',
              'rank'),
          _frend(
              AvatarButton(
                urlImage: 'assets/pigbed.png',
                size: 30,
              ),
              'name',
              'rank'),
          _frend(
              AvatarButton(
                urlImage: 'assets/pigbed.png',
                size: 30,
              ),
              'name',
              'rank'),
          _frend(
              AvatarButton(
                urlImage: 'assets/pigbed.png',
                size: 30,
              ),
              'name',
              'rank'),
          _frend(
              AvatarButton(
                urlImage: 'assets/pigbed.png',
                size: 30,
              ),
              'name',
              'rank'),
          _frend(
              AvatarButton(
                urlImage: 'assets/pigbed.png',
                size: 30,
              ),
              'name',
              'rank'),
        ],
      );
  _frend(avatar, name, rank) => Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            avatar,
            Text(
              name,
              style: TextStyle(fontSize: 30),
            ),
            Text(rank),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined))
          ],
        ),
      );
}
