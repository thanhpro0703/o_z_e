import 'package:flutter/material.dart';

class StartButton extends StatefulWidget {
  const StartButton({super.key, required this.text, required this.page});
  final String text;
  final page;

  @override
  State<StartButton> createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(100, 50)),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        elevation: MaterialStateProperty.all(3),
        shadowColor:
            MaterialStateProperty.all(Colors.transparent.withAlpha(80)),
      ),
      onPressed: widget.page,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Container(
                child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ),
    );
  }
}
