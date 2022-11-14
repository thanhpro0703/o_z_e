import 'package:flutter/material.dart';
import '../screen_setting/screen_seting.dart';

class ButtonSetting extends StatefulWidget {
  const ButtonSetting({super.key, required this.img});
  final String img;

  @override
  State<ButtonSetting> createState() => _ButtonSettingState();
}

class _ButtonSettingState extends State<ButtonSetting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
          flex: 1,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.7, 1.5),
                colors: <Color>[
                  Color(0xffff8e0e00),
                  Color(0xfff1f1c18),
                ],
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 5.0)
              ],
            ),
            child: Expanded(
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(100, 60)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    // elevation: MaterialStateProperty.all(3),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenSetting(),
                    ));
                  },
                  child: Image.asset(widget.img)),
            ),
          )),
    );
  }
}
