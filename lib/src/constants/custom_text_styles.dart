import 'package:flutter/material.dart';
import 'custom_colors.dart';


class CustomTextStyles {

  CustomTextStyles._();

  static const _basic = TextStyle(
      color: CustomColors.white,
      fontFamily: 'Roboto',
      decoration: TextDecoration.none
  );

  static final titleH1 = _basic.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w700
  );
  static final basicH1Medium = _basic.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500
  );
  static final basicH1Regular = _basic.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400
  );
  static final basic = _basic.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400
  );
  static final caption = _basic.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400
  );
  static final buttonBasic = _basic.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w400
  );
  static final buttonMedium = _basic.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w500
  );
}