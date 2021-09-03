import 'package:flutter/material.dart';
import 'package:web_mood_assessor/src/constants/content.dart';
import 'package:web_mood_assessor/src/constants/custom_colors.dart';
import 'package:web_mood_assessor/src/views/assess_mood_button.dart';
import 'dart:js' as js;


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          color: CustomColors.purpleDarkLight,
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
                mood: 5,
                onPressed: () {
                  print('Press');
                  js.context.callMethod('open', [Content.googlePlayJoinBetaTestUrl]);
                },
              )
            ],
          ),
        )
      ),
    );
  }
}