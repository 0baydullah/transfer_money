import 'package:flutter/material.dart';
import 'package:transfer_money/statistics.dart';
import 'historyTopup.dart';
import 'home.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'profile.dart';
import 'transfer.dart';
import 'btn1.dart';
import 'btn2.dart';
import 'btn3.dart';

int bIndex = 0;
Color BtnTxt = Color(0xff000000);
//Color(0xff8231F7);
Color BtnBg = Color(0xffffffff);

//Color(0x1a8231F7);
class HistoryTopup extends StatefulWidget {
  const HistoryTopup({super.key});

  @override
  State<HistoryTopup> createState() => _HistoryTopupState();
}

class _HistoryTopupState extends State<HistoryTopup> {
  List<Widget> Screen = <Widget>[
    Home(),
    Transfer(),
    HistoryTopup(),
    Stat(),
    Profile()
  ];
  List<Widget> cont = <Widget>[
    Btn1(),
    Btn2(),
    Btn3(),
  ];
  List<String> btnName = ["TopUp", "Withdraw", "Transfer"];
  int cIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff5F13CE), Color(0xff8231F7)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 60, 16, 16),
              child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple[300],
                      ),
                      height: 40,
                      width: 40,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "History",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 28,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple[300],
                      ),
                      height: 40,
                      width: 40,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ), //appbar
            Expanded(
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  color: Color(0xffF6F6F6),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 15, 15, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 48,
                            width: 310,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Sub ID/ Player ID/ Transaction ID",
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 48,
                            width: 48,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff7526E8),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.calendar_month_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffffffff),
                        ),
                        child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 35,
                                width: 126.3,
                                decoration: BoxDecoration(
                                  color: BtnBg,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        bIndex = index;
                                        if (bIndex == index) {
                                          print("oh done");
                                          BtnBg = Color(0x1a8231F7);
                                          BtnTxt = Color(0xff8231F7);
                                        }
                                      });
                                    },
                                    child: Text(
                                      btnName[index],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: BtnTxt,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Color(0xffF6F6F6),
                        child: cont[bIndex],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
