import 'package:flutter/material.dart';
import 'package:transfer_money/statistics.dart';
import 'historyTopup.dart';
import 'home.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'profile.dart';
import 'transfer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Widget>Screen = <Widget>[
    Home(),
    Transfer(),
    HistoryTopup(),
    Stat(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile",
        style: TextStyle(
          fontSize: 69,
        ),),
      ),
    );
  }
}
