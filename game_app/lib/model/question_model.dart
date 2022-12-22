import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Question {
  final String id;
  final String question;
  Map<String, bool> options;
  Question({required this.id, required this.question, required this.options});
  @override
  String toString() {
    return 'Question(id: $id, question: $question, options: $options)';
  }
}

// we will create our question model here
