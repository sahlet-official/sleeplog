import 'package:flutter/material.dart';

import 'settings_page.dart';
import 'statistic_page.dart';
import 'submit_info_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0x19, 0x23, 0x46, 1.0),
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Center(
          child: Column(
            children:<Widget> [

              Container(
                    color: Colors.amberAccent,
                    child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                       Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => SubmitInfoPage()));
                    },
                    child: const Text('Submit Info Page'),
                  ),
                  ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    color: Colors.amberAccent,
                    child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                       Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => StatisticPage()));
                    },
                    child: const Text('Statistic Page'),
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
                                    MaterialPageRoute(builder: (context) => SettingsPage()));
                    },
                    child: const Text('Settings Page'),
                  ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}
