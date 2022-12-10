import 'package:flutter/material.dart';
import 'name_page.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x19, 0x23, 0x46, 1.0),
      body: Center(
          child: Column(
        children: <Widget>[
          // Stack(children: <Widget>[
          // Container(
          //   width: 402,
          //   height: 603.2,
          //   child: Image.asset('assets/images/moon.png'),
          // ),

          // Align(
          //   alignment: Alignment.center,
          //   child: Container(
          //     child: Text("Your Sleep\nAssistant",
          //       style: TextStyle(
          //         color: Color.fromRGBO(0xC4,0xBF,0xFE, 1.0),
          //         fontSize: 36,
          //         fontWeight: FontWeight.bold,
          //         fontFamily: "Monsserat",
          //       ),
          //     ),
          //   ),
          // )

          // ]),

          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 402,
                  height: 603.2,
                  child: Image.asset('assets/images/moon.png'),
                ),
                
                Container(
                  child: Text(
                    "Your Sleep\nAssistant",
                    style: TextStyle(
                      color: Color.fromRGBO(0xC4, 0xBF, 0xFE, 1.0),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Monsserat",
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Colors.amberAccent,
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NamePage()));
              },
              child: const Text('Name Page'),
            ),
          ),
        ],
      )),
    );
  }
}
