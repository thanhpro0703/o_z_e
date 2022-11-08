import 'package:flutter/material.dart';
import 'package:game_app/screen_shop/conten_shop.dart';
import '../screen_maingame/header.dart';

class ScreenShop extends StatefulWidget {
  const ScreenShop({super.key});

  @override
  State<ScreenShop> createState() => _ScreenShopState();
}

class _ScreenShopState extends State<ScreenShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [MyHeader(), ContentShop()],
          ),
        ),
      ),
    );
  }
}
