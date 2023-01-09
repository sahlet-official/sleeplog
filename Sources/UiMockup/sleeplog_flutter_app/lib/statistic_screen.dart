import 'package:flutter/material.dart';

import 'assets.dart';

class StatisticPage extends StatelessWidget{
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x19, 0x23, 0x46, 1.0),
       body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(Assets.statistic1),
            ),
            Container(
              margin: EdgeInsets.only(top: 0),
              child: Image.asset(Assets.statistic2),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Image.asset(Assets.statistic3),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Image.asset(Assets.statistic4),
            ),
          ],
        ),
       ),
    );
  }
}
