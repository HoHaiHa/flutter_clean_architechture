import 'package:flutter/material.dart';

class AppThemeData {
  AppThemeData({
    this.textTheme,
    this.colorSchema,
  });

  final AppTextTheme? textTheme;
  final AppColorSchema? colorSchema;
}

class AppTextTheme {
  AppTextTheme({
    this.xLarge,
    this.xLargeBold,
    this.xxLargeBold,
    this.xxxLargeSemiBold,
    this.xxxLargeBold,
    this.primary,
    this.medium,
    this.small,
    this.mediumSemiBold,
    this.mediumBold,
    this.largeSemiBold,
    this.largeBold,
    this.primaryBold,
    this.title,
    this.header,
    this.title2,
    this.smallBold,
  });

  final TextStyle? xLarge;
  final TextStyle? xLargeBold;
  final TextStyle? xxLargeBold;
  final TextStyle? xxxLargeSemiBold;
  final TextStyle? xxxLargeBold;
  final TextStyle? primary;
  final TextStyle? medium;
  final TextStyle? small;
  final TextStyle? mediumSemiBold;
  final TextStyle? mediumBold;
  final TextStyle? largeSemiBold;
  final TextStyle? largeBold;
  final TextStyle? primaryBold;
  final TextStyle? title;
  final TextStyle? header;
  final TextStyle? title2;
  final TextStyle? smallBold;
}

class AppColorSchema {
  AppColorSchema({
    this.primary,
    this.mainText,
    this.successColor,
    this.mainStrokeColor,
    this.mainBackgroundColor,
    this.secondaryStrokeColor,
    this.secondaryBackgroundColors,
    this.subTextColor,
    this.secondary1,
    this.secondary2,
    this.secondary3,
    this.secondary4,
    this.secondary5,
    this.warning,
    this.replaceTextColor,
  });

  final Color? primary;
  final Color? mainText;
  final Color? successColor;
  final Color? mainStrokeColor;
  final Color? mainBackgroundColor;
  final Color? secondary1;
  final Color? secondary2;
  final Color? secondary3;
  final Color? secondary4;
  final Color? secondary5;
  final Color? secondaryStrokeColor;
  final Color? secondaryBackgroundColors;
  final Color? subTextColor;
  final Color? warning;
  final Color? replaceTextColor;
}
