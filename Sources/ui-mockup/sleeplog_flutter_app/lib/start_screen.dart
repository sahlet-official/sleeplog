import 'package:flutter/material.dart';

import 'assets.dart';
import 'colors.dart';
import 'name_screen.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsNames.backgroundColor,
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 402,
                  height: 603.2,
                  child: Image.asset(
                    Assets.nightSky,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.1,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: const Text(
                        "Your Sleep\n\tAssistant",
                        style: TextStyle(
                          color: ColorsNames.lightPurple,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Monsserat",
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Text(
                        "Improve your sleep\n\t\t\t\t\tquality today",
                        style: TextStyle(
                          color: ColorsNames.darkPurple,
                          fontSize: 14,
                          fontFamily: "Monsserat",
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),

          Container(
            width: 260,
            height: 70,
            decoration: BoxDecoration(
              color: ColorsNames.violet,
              borderRadius: BorderRadius.all(Radius.circular(13)),
              border: Border.all(
                width: 2,
                color: ColorsNames.violet,
              ),
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NamePage()));
              },
              child: const Text(
                "Get Started",
                style: TextStyle(
                  color: ColorsNames.lightPurple,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Monsserat",
                ),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "How it works?\t",
                  style: TextStyle(
                    color: ColorsNames.darkPurple,
                    fontSize: 12,
                    fontFamily: "Monsserat",
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Discover now",
                  style: TextStyle(
                    color: ColorsNames.lightPurple,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Monsserat",
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
