import 'package:flutter/material.dart';
import 'package:transfer_money/statistics.dart';
import 'historyTopup.dart';
import 'home.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'profile.dart';
import 'transfer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int cIndex = 0;
  List<Widget> Screen = <Widget>[
    Home(),
    Transfer(),
    HistoryTopup(),
    Stat(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 25.0,
              // has the effect of softening the shadow
//                    spreadRadius: 2.0,
              // has the effect of extending the shadow
              // offset: Offset(
              //   1.0, // horizontal, move right 10
              //   5.0, // vertical, move down 10
              // ),
            ),
          ],
      //    gradient: LinearGradient(colors: [Color(0xff5F13CE), Color(0xff8231F7)]),
        ),
        child: Scaffold(
          backgroundColor: Color(0xffF6F6F6),
          body: Screen[cIndex],
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              elevation: 5,
              currentIndex: cIndex,
              selectedItemColor: Color(0xff701BF8),
              unselectedItemColor: Colors.grey[800],
              showUnselectedLabels: true,
              showSelectedLabels: true,
              onTap: (index) {
                setState(() {
                  cIndex = index;
                });
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 43,
                    child: SvgPicture.asset(
                      "asset/home.svg",
                      height: 22,
                      width: 22,
                    ),
                  ),
                  label: "Home",
                  backgroundColor: Color(0xffffffff),
                  activeIcon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff701BF8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: SvgPicture.asset(
                        'asset/home.svg',
                        color: Color(0xffffffff),
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("asset/transfer.svg"),
                  label: "Transfer",
                  backgroundColor: Color(0xffffffff),
                  activeIcon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff701BF8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset(
                        'asset/transfer.svg',
                        color: Color(0xffffffff),
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("asset/history.svg"),
                  label: "History",
                  backgroundColor: Color(0xffffffff),
                  activeIcon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff701BF8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset(
                        'asset/history.svg',
                        color: Color(0xffffffff),
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("asset/graph.svg"),
                  label: "Statistics",
                  backgroundColor: Color(0xffffffff),
                  activeIcon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff701BF8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset(
                        'asset/graph.svg',
                        color: Color(0xffffffff),
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("asset/profile.svg"),
                  label: "Profile",
                  backgroundColor: Color(0xffffffff),
                  activeIcon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff701BF8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset(
                        'asset/profile.svg',
                        color: Color(0xffffffff),
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
