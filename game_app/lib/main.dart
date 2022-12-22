import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_app/auth/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:audioplayers/audioplayers.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}





// import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: CreateRoomPage());
//   }
// }

// class CreateRoomPage extends StatefulWidget {
//   @override
//   _CreateRoomPageState createState() => _CreateRoomPageState();
// }

// class _CreateRoomPageState extends State<CreateRoomPage> {
//   final _roomNameController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Create Room'),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           children: [
//             TextFormField(
//               controller: _roomNameController,
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter a room name';
//                 }
//                 return null;
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   _createRoom();
//                 }
//               },
//               child: Text('Create Room'),
//             ),
//             Expanded(child: RoomList()),
//             ElevatedButton(
//               onPressed: () {
//                 joinRoom('-NJn0qys96V6ScyW6XmT');
//               },
//               child: Text('John Room'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _createRoom() {
//     final roomName = _roomNameController.text;

//     final roomRef = FirebaseDatabase.instance.ref().child('rooms').push();
//     final room = {
//       'name': roomName,
//       'createdAt': DateTime.now().toIso8601String(),
//       'members': {
//         'user1': FirebaseAuth.instance.currentUser!.email!,
//         'user2': ''
//       },
//     };
//     roomRef.set(room).then((_) {
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context) => ScreenSolo(
//                     username1: FirebaseAuth.instance.currentUser!.email!,
//                     roomname: roomName,
//                   )));
//     });
//   }
// }

// void joinRoom(String roomId) async {
//   // Lấy thông tin về phòng hiện tại
//   final roomRef = FirebaseDatabase.instance.ref().child('rooms').child(roomId);

//   DatabaseEvent event = await roomRef.once();
//   final room = event.snapshot.value;
//   print(room);

//   // //Kiểm tra xem phòng hiện tại có đầy không
//   // if (room['user2'] != '') {
//   //   // Nếu phòng đầy, thông báo lỗi cho người dùng
//   //   throw 'Phòng đã đầy';
//   // }

//   //Cập nhật thông tin về người dùng hiện tại và trạng thái của phòng
//   final updatedRoom = {
//     'name': FirebaseAuth.instance.currentUser!.email!,
//   };
//   roomRef.update({
//     'members': {'user2': 'ngmoi'}
//   });
// }

// class RoomList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: FirebaseDatabase.instance.ref().child('rooms').onValue,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           Map<dynamic, dynamic> rooms =
//               snapshot.data!.snapshot.value as Map<dynamic, dynamic>;
//           List<Room> roomList = [];
//           rooms.forEach((key, value) {
//             roomList.add(Room.fromJson(value));
//           });
//           return ListView.builder(
//             itemCount: roomList.length,
//             itemBuilder: (context, index) {
//               return RoomTile(room: roomList[index]);
//             },
//           );
//         } else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }
// }

// class RoomTile extends StatelessWidget {
//   final Room room;

//   RoomTile({required this.room});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(room.name),
//       trailing: IconButton(
//         icon: Icon(Icons.delete),
//         onPressed: () {
//           // Delete the room from the database
//           FirebaseDatabase.instance
//               .ref()
//               .child('rooms')
//               .child(room.name)
//               .remove();
//         },
//       ),
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => ScreenSolo(
//                       username1: FirebaseAuth.instance.currentUser!.email!,
//                       roomname: room.name,
//                     )));
//       },
//     );
//   }
// }

// class Room {
//   final String name;
//   final String createdAt;
//   final Map<dynamic, dynamic> members;

//   Room({required this.name, required this.createdAt, required this.members});

//   factory Room.fromJson(Map<dynamic, dynamic> json) {
//     return Room(
//       name: json['name'],
//       createdAt: json['createdAt'],
//       members: json['members'],
//     );
//   }
// }
