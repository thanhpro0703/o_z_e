import 'package:flutter/material.dart';

class ElavetedButon extends StatefulWidget {
  const ElavetedButon({super.key, required this.text, required this.page});
  final String text;
  final page;

  @override
  State<ElavetedButon> createState() => _ElavetedButonState();
}

class _ElavetedButonState extends State<ElavetedButon> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
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
            // Container(
            //   child: Icon(
            //     Icons.favorite_border_rounded,
            //     size: 15,
            //     color: Color.fromARGB(255, 0, 0, 0),
            //   ),
            // ),
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

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key, required this.button});
  final Widget button;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 5.0)
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.7, 1.5),
                colors: <Color>[
                  Color(0xffff8e0e00),
                  Color(0xfff1f1c18),
                ],
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: widget.button),
      ),
    );
  }
}
