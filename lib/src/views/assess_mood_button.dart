import 'package:flutter/material.dart';
import 'package:web_mood_assessor/src/constants/content.dart';
import 'package:web_mood_assessor/src/constants/custom_colors.dart';


class AssessMoodButton extends StatelessWidget {
  final int mood;
  final Function onPressed;

  AssessMoodButton({this.mood, this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Скачать')
    );
  }
}