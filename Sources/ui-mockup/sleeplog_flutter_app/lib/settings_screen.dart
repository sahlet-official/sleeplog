import 'package:flutter/material.dart';

import 'assets.dart';
import 'colors.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x19, 0x23, 0x46, 1.0),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(40, 60, 40, 0),
          padding: EdgeInsets.fromLTRB(0, 10, 84, 0),
          decoration: BoxDecoration(
            color: ColorsNames.cardBackColor,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            border: Border.all(
              width: 2,
              color: ColorsNames.cardBackColor,
            ),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 20, 0, 20) ,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Montserrat",
                      color: ColorsNames.lightPurple,
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset(
                  Assets.settingList,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
