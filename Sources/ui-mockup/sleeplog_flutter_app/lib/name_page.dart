import 'package:flutter/material.dart';

import 'home_page.dart';

class NamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x19, 0x23, 0x46, 1.0),
      appBar: AppBar(
        title: Text("Name page"),
      ),
      body: Center(
          child: Container(
            color: Colors.amberAccent,
            child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
               Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: const Text('Home Page'),
          ),
          )
      ),
    );
  }
}
