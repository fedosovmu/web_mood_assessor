import 'package:flutter/material.dart';
import 'package:web_mood_assessor/src/constants/custom_colors.dart';


class AssessMoodButton extends StatelessWidget {
  final int mood;
  final Function onPressed;

  AssessMoodButton({this.mood, this.onPressed,});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = CustomColors.moods[mood];
    //final foregroundColor
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text('Скачать'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))
            )
          )
        ),
      ),
    );
  }
}