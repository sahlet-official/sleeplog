import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'assets.dart';
import 'colors.dart';
import 'navigation_bar.dart';

class NamePage extends StatefulWidget {

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsNames.backgroundColor,
      body: Center(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    Assets.backBlot,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin:  EdgeInsets.only(left: 40),
                      // padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "What is\nyour name?",
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
                    padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width / 5,
                      MediaQuery.of(context).size.width / 3,
                      MediaQuery.of(context).size.width / 5,
                      MediaQuery.of(context).size.height / 3.7,
                    ),
                    child: TextField(
                      controller: _controller,
                      // onSubmitted: (value) => NamePage.userName,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: ColorsNames.lightPurple,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
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
                      MaterialPageRoute(builder: (context) => MyNavigationbar()));
                },
                child: const Text(
                  "Start>",
                  style: TextStyle(
                    color: ColorsNames.lightPurple,
                    fontSize: 24,
                    fontFamily: "Monsserat",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
