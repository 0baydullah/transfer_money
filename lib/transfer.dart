import 'package:flutter/material.dart';
import 'package:transfer_money/statistics.dart';
import 'historyTopup.dart';
import 'home.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'profile.dart';
import 'transfer.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  List<Widget>Screen = <Widget>[
    Home(),
    Transfer(),
    HistoryTopup(),
    Stat(),
    Profile()
  ];
  int cIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text("Transfer",
          style: TextStyle(
            fontSize: 69,
          ),
        ),
      ),

    );;
  }
}
