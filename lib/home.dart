import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:transfer_money/statistics.dart';
import 'historyTopup.dart';
import 'home.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'profile.dart';
import 'transfer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text("Home",
          style: TextStyle(
            fontSize: 69,
          ),),
      ),
    );
  }
}
