import 'dart:convert';

import 'package:http/http.dart' as http;

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
