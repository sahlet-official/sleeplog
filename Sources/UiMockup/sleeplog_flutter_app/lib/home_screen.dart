import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'assets.dart';
import 'colors.dart';
import 'fonts.dart';
import 'submit_info_screen.dart';
import 'texts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool light = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x19, 0x23, 0x46, 1.0),
      body: Center(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                Assets.backBlot,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      Texts.homeHeader,
                      style: TextStyle(
                        color: ColorsNames.lightPurple,
                        fontSize: Fonts.headerFontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: Fonts.defaultFont,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 90, 40, 55),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: ColorsNames.violet,
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(
                      width: 2,
                      color: ColorsNames.lightPurple,
                    ),
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset(Assets.startSleepIcon),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SubmitInfoPage()));
                    },
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  decoration: BoxDecoration(
                    color: ColorsNames.cardBackColor,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                      width: 2,
                      color: ColorsNames.cardBackColor,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.asset(Assets.bedImage),

                      Column(
                        children: <Widget>[
                          Text(
                            Texts.homeBedTimeHeader,
                            style: TextStyle(
                              color: ColorsNames.lightPurple,
                              fontSize: Fonts.cardTitleFontSize,
                              fontFamily: Fonts.defaultFont,
                            ),
                          ),

                          Text(
                            Texts.homeBedTime,
                            style: TextStyle(
                              color: ColorsNames.darkPurple,
                              fontSize: Fonts.subtitleFontSize,
                              fontFamily: Fonts.defaultFont,
                            ),
                          ),

                          CupertinoSwitch(
                            value: light,
                            trackColor: ColorsNames.lightPurple,
                            activeColor: ColorsNames.violet,
                            thumbColor: Colors.white,
                            onChanged: (bool value) {
                              setState(() {
                              light = value;
                              });
                            },
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
