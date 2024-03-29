import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'assets.dart';
import 'colors.dart';
import 'fonts.dart';
import 'texts.dart';

class SubmitInfoPage extends StatefulWidget {
  @override
  State<SubmitInfoPage> createState() => _SubmitInfoPage();
}

class _SubmitInfoPage extends State<SubmitInfoPage> {
  int _fallingAsleepLength = 0;
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
      backgroundColor: Color.fromRGBO(0x19, 0x23, 0x46, 1.0),
      body: Center(
        child: ListView(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(50, 15, 0, 20),
                child: Text(
                  Texts.submitHeader,
                  style: TextStyle(
                    fontSize: Fonts.headerFontSize,
                    fontWeight: FontWeight.w500,
                    fontFamily: Fonts.defaultFont,
                    color: ColorsNames.lightPurple,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 590,
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 200,
                    decoration: BoxDecoration(
                      color: ColorsNames.cardBackColor,
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      border: Border.all(
                        width: 2,
                        color: ColorsNames.cardBackColor,
                      ),
                    ),
                    child: Image.asset(
                      Assets.submitSlider,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 200,
                    decoration: BoxDecoration(
                      color: ColorsNames.cardBackColor,
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      border: Border.all(
                        width: 2,
                        color: ColorsNames.cardBackColor,
                      ),
                    ),
                    child: Image.asset(
                      Assets.submitGraph,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                    decoration: BoxDecoration(
                      color: ColorsNames.cardBackColor,
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      border: Border.all(
                        width: 2,
                        color: ColorsNames.cardBackColor,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 0, 30),
                            child: Text(
                              Texts.submitSleepLengthHeader,
                              style: TextStyle(
                                fontSize: Fonts.cardTitleFontSize,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.defaultFont,
                                color: ColorsNames.lightPurple,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(120, 0, 0, 50),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: SvgPicture.asset(Assets.minusIcon),
                                  onPressed: (() {
                                    setState(() {
                                      _fallingAsleepLength != 0
                                          ? _fallingAsleepLength--
                                          : _fallingAsleepLength = 0;
                                    });
                                  }),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: ColorsNames.violet,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13)),
                                    border: Border.all(
                                      width: 2,
                                      color: ColorsNames.lightPurple,
                                    ),
                                  ),
                                  child: Text(
                                    "$_fallingAsleepLength",
                                    style: TextStyle(
                                      fontSize: Fonts.submitCountButtonFontSize,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: Fonts.defaultFont,
                                      color: ColorsNames.lightPurple,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: SvgPicture.asset(Assets.plusIcon),
                                  onPressed: (() {
                                    setState(() {
                                      _fallingAsleepLength++;
                                    });
                                  }),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                    decoration: BoxDecoration(
                      color: ColorsNames.cardBackColor,
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      border: Border.all(
                        width: 2,
                        color: ColorsNames.cardBackColor,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 0, 30),
                            child: Text(
                              Texts.submitComments,
                              style: TextStyle(
                                fontSize: Fonts.cardTitleFontSize,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.defaultFont,
                                color: ColorsNames.lightPurple,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 5 * 20,
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: TextField(
                              style: TextStyle(color: ColorsNames.lightPurple),
                              controller: _controller,
                              maxLines: 5,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: ColorsNames.lightPurple,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
              width: 340,
              height: 60,
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
                  Navigator.pop(context);
                },
                child: const Text(
                  Texts.submitButton,
                  style: TextStyle(
                    color: ColorsNames.lightPurple,
                    fontSize: Fonts.bottomButtonFontSize,
                    fontWeight: FontWeight.w500,
                    fontFamily: Fonts.defaultFont,
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
