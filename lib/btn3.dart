import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'historyTopup.dart';



class Btn3 extends StatefulWidget {
  const Btn3({super.key});

  @override
  State<Btn3> createState() => _Btn1State();
}

class _Btn1State extends State<Btn3> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: 23,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              height: 113,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffF5BD2B),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "asset/arrow.svg",
                              height: 16,
                              width: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 22,
                                  width: 76,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                    color: Color(0xffF6F6F6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "SA308286",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "1753377562",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "TXN: PQRS4542120",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50,),
                        Text(
                          "\$350.00",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF5BD2B),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("asset/clk.svg",height: 12,width: 12,),
                            SizedBox(width: 5,),
                            Text("14.07.23, 10:15 PM",style: TextStyle(
                              fontSize: 12,
                            ),),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}