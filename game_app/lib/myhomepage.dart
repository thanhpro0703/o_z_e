import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> docIDs = [];
  Future getDocId() async {
    await FirebaseFirestore.instance
        .collection('questions')
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              print(document.reference);
              docIDs.add(document.reference.id);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getDocId(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: docIDs.length,
            itemBuilder: (context, index) {
              return Text(docIDs[index]);
            },
          );
        },
      ),
    );
  }
}
