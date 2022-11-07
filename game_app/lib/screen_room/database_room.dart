import 'package:flutter/material.dart';
import '../model/dbcontext.dart';
import '../model/entry.dart';

class DatabaseRoom extends StatefulWidget {
  const DatabaseRoom({super.key, required this.entry});
  final Entry entry;
  @override
  State<DatabaseRoom> createState() => _DatabaseRoomState();
}

class _DatabaseRoomState extends State<DatabaseRoom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Expanded(child: TextContent(text: widget.entry.Id)),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Expanded(child: TextContent(text: widget.entry.Subject)),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Expanded(child: TextContent(text: widget.entry.Grade)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Container(
              margin: EdgeInsets.only(right: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child:
                        Expanded(child: TextContent(text: widget.entry.Amount)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Image(
                      image: AssetImage(widget.entry.Room),
                      width: 20,
                      height: 20,
                    )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextContent extends StatelessWidget {
  const TextContent({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
