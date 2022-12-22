import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';

var link = "https://ozeapp-5f71c-default-rtdb.firebaseio.com/results.json";

getQuiz() async {
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    print("data is loaded");
    return data;
  }
}

Future addScore(int score, String username) async {
  final url = Uri.parse(
      'https://ozeapp-5f71c-default-rtdb.firebaseio.com/hight_score.json');
  http.post(url, body: json.encode({'score': score, 'username': username}));
}

Future<dynamic> getHighScore() async {
  final player = AudioPlayer();
  player.play(AssetSource('complete.wav'));
  var data;
  var highScore = 0;
  var link =
      "https://ozeapp-5f71c-default-rtdb.firebaseio.com/hight_score.json";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    data = jsonDecode(res.body.toString());
    print(data);
  }
  if (data == null || data.isEmpty) {
    return 0;
  }
  for (var item in data.values) {
    if (item['score'] > highScore) {
      highScore = item['score'];
    }
    print(highScore);
  }
  return highScore;
}

Future<dynamic> getHighScoreUserName(String username) async {
  final player = AudioPlayer();
  player.play(AssetSource('complete.wav'));
  var data;
  var highScore = 0;
  var link =
      "https://ozeapp-5f71c-default-rtdb.firebaseio.com/hight_score.json";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    data = jsonDecode(res.body.toString());
    print(data);
  }
  if (data == null || data.isEmpty) {
    return 0;
  }
  for (var item in data.values) {
    if (item['score'] > highScore && item['username'] == username) {
      highScore = item['score'];
    }
    print(highScore);
  }
  return highScore;
}

Future<dynamic> totalScore(String username) async {
  var data;
  int total = 0;
  var link =
      "https://ozeapp-5f71c-default-rtdb.firebaseio.com/hight_score.json";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    data = jsonDecode(res.body.toString());
    print(data);
  }
  if (data == null || data.isEmpty) {
    return 0;
  }
  for (var item in data.values) {
    if (!item['score'].toString().isEmpty && item['username']==username ) {
      total += int.parse(item['score'].toString());
    }
    print(total);
  }
  return total;
}

Future<dynamic> history() async {
  var data;
  int total = 0;
  var totalArr = [];
  var pointArr = [];
  int demArr = 0;
  int demPoint = 0;
  var link =
      "https://ozeapp-5f71c-default-rtdb.firebaseio.com/hight_score.json";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    data = jsonDecode(res.body.toString());
    print(data);
  }
  if (data == null || data.isEmpty) {
    return 0;
  }
  for (var item in data.values) {
    if (!item['score'].toString().isEmpty) {
      total += int.parse(item['score'].toString());
      totalArr[demArr++] = total;
      pointArr[demPoint++] = item['score'];
    }
    print(total);
  }
  return [totalArr, pointArr];
}

Future adduserDetails(
  String userName,
  int point,
) async {
  await FirebaseFirestore.instance
      .collection('users')
      .add({'username': userName, 'point': point});
}
