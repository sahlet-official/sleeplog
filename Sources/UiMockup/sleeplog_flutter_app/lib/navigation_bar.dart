import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'assets.dart';
import 'colors.dart';
import 'home_screen.dart';
import 'settings_screen.dart';
import 'statistic_screen.dart';

class MyNavigationbar extends StatefulWidget {
  const MyNavigationbar({super.key});

  @override
  State<MyNavigationbar> createState() => _MyNavigationbarState();
}

class _MyNavigationbarState extends State<MyNavigationbar> {
  int pageIndex = 0;

  final pages = [
    HomePage(),
    StatisticPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsNames.backgroundColor,
      body: Center(
        child: pages.elementAt(pageIndex),
      ),
      bottomNavigationBar: _buildMyNavBar(context),
    );
  }

  Container _buildMyNavBar(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.fromLTRB(40, 40, 40, 20),
      decoration: BoxDecoration(
        color: ColorsNames.cardBackColor,
        borderRadius: BorderRadius.all(Radius.circular(13)),
        border: Border.all(
          width: 2,
          color: ColorsNames.cardBackColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? SvgPicture.asset(Assets.homeIconPress)
                : SvgPicture.asset(Assets.homeIcon),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? SvgPicture.asset(Assets.statisticIconPress)
                : SvgPicture.asset(Assets.statisticIcon),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? SvgPicture.asset(Assets.settingsIconPress)
                : SvgPicture.asset(Assets.settingsIcon),
          ),
        ],
      ),
    );
  }
}
