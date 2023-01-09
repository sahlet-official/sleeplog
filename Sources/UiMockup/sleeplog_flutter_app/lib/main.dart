import 'package:flutter/material.dart';
import 'package:sleeplog_flutter_app/start_screen.dart';

void main() {
  runApp(const SleeplogApp());
}

class SleeplogApp extends StatelessWidget {
  const SleeplogApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sleeplog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}
