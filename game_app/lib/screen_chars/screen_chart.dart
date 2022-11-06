import 'package:flutter/material.dart';
import 'package:game_app/screen_chars/content_charts.dart';
import 'package:game_app/screen_chars/footer_chart.dart';
import '../screen_maingame/header.dart';
import '../screen_maingame/footer.dart';

class ScreenCharts extends StatefulWidget {
  const ScreenCharts({super.key});

  @override
  State<ScreenCharts> createState() => _ScreenChartsState();
}

class _ScreenChartsState extends State<ScreenCharts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [MyHeader(), MyContentCharts(), MyFooterChart()],
          ),
        ),
      ),
    );
  }
}
