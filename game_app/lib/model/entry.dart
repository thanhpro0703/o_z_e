import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class Entry {
  final String Id;
  final String Subject;
  final String Grade;
  final String Amount;
  void Function()? Room;
  Entry(
      {required this.Id,
      required this.Subject,
      required this.Grade,
      required this.Amount,
      required this.Room});
}

class PlayLevels {
  final String Level;
  final String Topic;
  PlayLevels({required this.Level, required this.Topic});
}

class HighScore {
  String name;
  int score;

  HighScore({required this.name, required this.score});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'score': score,
    };
  }
}
