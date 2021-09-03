import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'package:web_mood_assessor/src/views/assess_mood_button.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          height: 600,
          width: 360,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              AssessMoodButton(
                mood: 3,
                onPressed: () {
                  print('Press');
                },
              )
            ],
          ),
        )
      ),
    );
  }
}