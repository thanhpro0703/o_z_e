import 'package:flutter/material.dart';

class AvatarButton extends StatelessWidget {
  const AvatarButton({
    Key? key,
    required this.urlImage,
    required this.size,
  }) : super(key: key);
  final String urlImage;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(182, 240, 185, 100),
                  Color.fromRGBO(225, 143, 232, 100),
                ])),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(
            urlImage,
          ),
          iconSize: size,
        ));
  }
}

Widget AvatarLayout(
  String urlImageAsset,
) =>
    Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(182, 240, 185, 100),
                  Color.fromRGBO(225, 143, 232, 100),
                ])),
        child: Image.asset(
          urlImageAsset,
          width: 50,
        ));
//asdf
