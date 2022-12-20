import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game_app/auth/auth_page.dart';
import 'package:game_app/auth/main_page.dart';
import 'package:game_app/myhomepage.dart';
import 'package:game_app/page/add-pay-method.dart';
import 'package:game_app/playgame2vs2.dart';
import 'package:game_app/screen_friends/screen_friends.dart';
import 'package:game_app/screen_playgame/content_playgame.dart';
import 'package:game_app/user_page/login_page.dart';
import '../screen_playgame/screen_playgame.dart';
import 'package:game_app/screen_shop/screen_shop.dart';
import 'package:game_app/screen_singler_play/screen_singler_play.dart';
import 'screen_maingame/screen_maingame.dart';
import 'screen_sign_in/form_sign_in.dart';
import 'screen_room/screen_room.dart';
import 'screen_setting/screen_seting.dart';
import 'screen_choose_level/screen_choose_level.dart';
import 'screen_solo/screen_solo.dart';
import 'screen_singler_play/screen_singler_play.dart';
import 'screen_play_group/screen_play_group.dart';
import './screen_play_group/screen_play_group.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screen_account/screen_account.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   runApp(const MyApp());
// }

// // void main() {
// //   runApp(const MyApp());
// // }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Firebase Chat App', home: CreateRoomPage());
  }
}

class CreateRoomPage extends StatefulWidget {
  @override
  _CreateRoomPageState createState() => _CreateRoomPageState();
}

class _CreateRoomPageState extends State<CreateRoomPage> {
  final _roomNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Room'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _roomNameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a room name';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _createRoom();
                }
              },
              child: Text('Create Room'),
            ),
            Expanded(child: RoomList())
          ],
        ),
      ),
    );
  }

  void _createRoom() {
    final roomName = _roomNameController.text;

    final roomRef = FirebaseDatabase.instance.ref().child('rooms').push();
    final room = {
      'name': roomName,
      'createdAt': DateTime.now().toIso8601String(),
      'members': {
        'user1': true,
      },
    };
    roomRef.set(room).then((_) {});
  }
}

class RoomList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseDatabase.instance.ref().child('rooms').onValue,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Map<dynamic, dynamic> rooms =
              snapshot.data!.snapshot.value as Map<dynamic, dynamic>;
          List<Room> roomList = [];
          rooms.forEach((key, value) {
            roomList.add(Room.fromJson(value));
          });
          return ListView.builder(
            itemCount: roomList.length,
            itemBuilder: (context, index) {
              return RoomTile(room: roomList[index]);
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class RoomTile extends StatelessWidget {
  final Room room;

  RoomTile({required this.room});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(room.name),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          // Delete the room from the database
          FirebaseDatabase.instance
              .ref()
              .child('rooms')
              .child(room.name)
              .remove();
        },
      ),
      onTap: () {
        // Navigate to the chat room screen
      },
    );
  }
}

class Room {
  final String name;
  final String createdAt;
  final Map<dynamic, dynamic> members;

  Room({required this.name, required this.createdAt, required this.members});

  factory Room.fromJson(Map<dynamic, dynamic> json) {
    return Room(
      name: json['name'],
      createdAt: json['createdAt'],
      members: json['members'],
    );
  }
}
