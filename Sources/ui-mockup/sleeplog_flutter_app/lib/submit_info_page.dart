import 'package:flutter/material.dart';

class SubmitInfoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x19, 0x23, 0x46, 1.0),
      appBar: AppBar(
        title: Text("Submit Info"),
      ),
      body: Center(child: Text("Submit Info")),
    );
  }

}