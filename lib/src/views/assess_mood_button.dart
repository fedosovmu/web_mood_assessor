import 'package:flutter/material.dart';
import 'package:web_mood_assessor/src/constants/custom_colors.dart';
import 'package:web_mood_assessor/src/constants/custom_text_styles.dart';


class AssessMoodButton extends StatelessWidget {
  final int mood;
  final Function onPressed;

  AssessMoodButton({this.mood, this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          'Скачать',
          style: CustomTextStyles.basicH1Medium,
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(CustomColors.moods[mood]),
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