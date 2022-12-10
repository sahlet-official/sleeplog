import 'package:flutter/material.dart';

class StatisticPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x19, 0x23, 0x46, 1.0),
      appBar: AppBar(
        title: Text("Statistic Page"),
      ),
      body: Center(child: Text("Statistic Page")),
    );
  }

}