import 'package:flutter/material.dart';
import 'package:game_app/screen_account/screen_account.dart';

class ButtonAvatar extends StatelessWidget {
  const ButtonAvatar(
      {super.key,
      required this.image,
      required this.width,
      required this.height, required this.username});
  final String image;
  final double width;
  final double height;
  final String username;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Container(
          width: width,
          height: height,
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
                  color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
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

                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  // elevation: MaterialStateProperty.all(3),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen_Acount(username: username,),
                      ));
                },
                child: Image.asset(
                  image,
                )),
          ),
        ),
      ),
    );
  }
}
