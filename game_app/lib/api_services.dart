import 'dart:convert';
import 'dart:core';
import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:game_app/model/User.dart';
import 'package:http/http.dart' as http;

import 'model/HistoryUser.dart';

var link = "https://ozeapp-5f71c-default-rtdb.firebaseio.com/results.json";

getQuiz() async {
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    return data;
  }
}
getUsersText() async {
  var res = await http.get(Uri.parse('https://ozeapp-5f71c-default-rtdb.firebaseio.com/hight_score.json'));
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

Future addUser(
  String username,
  String password,
  int heightScore,
  int rank,
) async {
  final url =
      Uri.parse('https://ozeapp-5f71c-default-rtdb.firebaseio.com/users.json');
  http.post(url,
      body: json.encode({
        'username': username,
        'password': password,
        'heightScore': heightScore,
        'rank': rank,
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

Future<int> getHighScoreUserName(String username) async {
  // final player = AudioPlayer();
  // player.play(AssetSource('complete.wav'));
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
  }
  if (data == null || data.isEmpty) {
    return 0;
  }
  for (var item in data.values) {
    if (item['score'].toString().isNotEmpty && item['username'] == username) {
      total += int.parse(item['score'].toString());
    }
  }

  return total;
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

Future<List<Friends>?> getUsers() async {
  var data;
  Friends user;
  List<Friends> users = [];
  var link = "https://ozeapp-5f71c-default-rtdb.firebaseio.com/users.json";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    data = jsonDecode(res.body.toString());
  }
  if (data == null || data.isEmpty) {
    return null;
  }
  for (var item in data.values) {
      user = Friends(
          username: item['username'],
          rank: await totalScore(item['username']),
          heightScore: await getHighScoreUserName(item['username']));
      users.add(user);
  }
  users.sort((a,b)=> a.rank.compareTo(b.rank));
  return users;
}

