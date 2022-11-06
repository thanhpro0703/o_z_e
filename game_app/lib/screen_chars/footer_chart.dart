import 'package:flutter/material.dart';

class MyFooterChart extends StatefulWidget {
  const MyFooterChart({super.key});

  @override
  State<MyFooterChart> createState() => _MyFooterChartState();
}

class _MyFooterChartState extends State<MyFooterChart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/footer.jpg'), fit: BoxFit.cover),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Expanded(
                      child: Image.asset(
                        'assets/reply-message.png',
                        width: 55,
                        height: 55,
                      ),
                    ),
                  ),
                ),
                ButtonFooterWidget(buttonfooter: ElavetedButon(text: "RANDOM")),
                ButtonFooterWidget(buttonfooter: ElavetedButon(text: "3 VS 3"))
              ],
            )));
  }
}

class ElavetedButon extends StatefulWidget {
  const ElavetedButon({super.key, required this.text});
  final String text;

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
        minimumSize: MaterialStateProperty.all(Size(120, 60)),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        // elevation: MaterialStateProperty.all(3),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 18,
            // fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ButtonFooterWidget extends StatefulWidget {
  const ButtonFooterWidget({super.key, required this.buttonfooter});
  final Widget buttonfooter;
  @override
  State<ButtonFooterWidget> createState() => _ButtonFooterWidgetState();
}

class _ButtonFooterWidgetState extends State<ButtonFooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
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
          child: widget.buttonfooter),
    );
  }
}
