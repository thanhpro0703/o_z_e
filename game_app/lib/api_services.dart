import 'dart:convert';
import 'dart:core';
import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;

var link = "https://ozeapp-5f71c-default-rtdb.firebaseio.com/results.json";

getQuiz() async {
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    return data;
  }
}

Future addScore(int score, int lengthQuestion, result, String username) async {
  final url = Uri.parse(
      'https://ozeapp-5f71c-default-rtdb.firebaseio.com/hight_score.json');
  http.post(url,
      body: json.encode({
        'score': score,
        'total': lengthQuestion,
        'result': result,
        'username': username,
      }));
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
  }
  if (data == null || data.isEmpty) {
    return 0;
  }
  for (var item in data.values) {
    if (item['score'] > highScore && item['username'] == username) {
      highScore = item['score'];
    }
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
    if (item['score'].toString().isNotEmpty && item['username'] == username) {
      total += int.parse(item['score'].toString());
    }
    print(total);
  }
  return total;
}

class HistoryUser {
  int point;
  int totalPoint;
  String result;

  HistoryUser(
      {required this.point, required this.totalPoint, required this.result});
}

Future<List<HistoryUser>?> history(String username) async {
  var data;
  int total = 0;
  HistoryUser user;
  List<HistoryUser> history = [];
  var link =
      "https://ozeapp-5f71c-default-rtdb.firebaseio.com/hight_score.json";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    data = jsonDecode(res.body.toString());
  }
  if (data == null || data.isEmpty) {
    return null;
  }
  for (var item in data.values) {
    if (item['score'].toString().isNotEmpty && item['username'] == username) {
      total += int.parse(item['score'].toString());
      user = HistoryUser(
          point: item['score'],
          totalPoint: total,
          result: "${item['result']}/${item['total']}");
      history.add(user);
    }
  }
  return history;
}
