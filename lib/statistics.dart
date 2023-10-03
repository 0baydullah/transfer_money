import 'package:flutter/material.dart';
import 'package:transfer_money/statistics.dart';
import 'historyTopup.dart';
import 'home.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'profile.dart';
import 'transfer.dart';

class Stat extends StatefulWidget {
  const Stat({super.key});

  @override
  State<Stat> createState() => _StatisticsState();
}

class _StatisticsState extends State<Stat> {
  List<Widget>Screen = <Widget>[
    Home(),
    Transfer(),
    HistoryTopup(),
    Stat(),
    Profile()
  ];
  int cIndex=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Statistics",
          style: TextStyle(
            fontSize: 69,
          ),),
      ),
    );
  }
}
