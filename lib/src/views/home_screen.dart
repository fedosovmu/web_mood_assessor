import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:web_mood_assessor/src/constants/content.dart';
import 'package:web_mood_assessor/src/constants/custom_colors.dart';


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
              MaterialButton(
                minWidth: double.infinity,
                height: 56,
                color: CustomColors.moods[4],
                splashColor: Colors.transparent,
                onPressed: () async {
                  print('press');
                  //js.context.callMethod('open', [Content.urlToGooglePlayTesters]);
                },
                child: Text('Скачать'),
              )
            ],
          ),
        )
      ),
    );
  }
}