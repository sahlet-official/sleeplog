import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'assets.dart';
import 'colors.dart';
import 'submit_info_screen.dart';

class HomePage extends StatelessWidget {
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
                    // padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Good evening,\nKiril",
                      style: TextStyle(
                        color: ColorsNames.lightPurple,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Monsserat",
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 90, 40, 60),
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
                  child: Image.asset(
                    Assets.widgetBed,
                    fit: BoxFit.cover,
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
