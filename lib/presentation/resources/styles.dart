import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architecture/presentation/resources/themes.dart';


import 'colors.dart';

abstract class AppStyles {
  static final primary = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final primaryBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final medium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final mediumSemiBold = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final mediumBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final largeSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final largeBold = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final xLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final xLargeBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final xxLargeBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final xxxLargeSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    height: 32 / 24,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final xxxLargeBold = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    height: 32 / 24,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final small = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final smallBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppColors.mainTextColor,
    fontFamily: AppTheme.appFontFamily,
  );

  static final title = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    height: 18 / 16,
    fontFamily: AppTheme.appFontFamily,
  );
  static final header = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    height: 28 / 18,
    fontFamily: AppTheme.appFontFamily,
  );
  static final bottomNavigation = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 11,
    height: 16 / 11,
    fontFamily: AppTheme.appFontFamily,
  );
  static final title2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 12 / 12,
    fontFamily: AppTheme.appFontFamily,
  );
  static BoxShadow defaultShadow = BoxShadow(
    color: AppColors.black.withAlpha((0.05 * 255).round()),
    blurRadius: 8,
    offset: const Offset(0, 8),
  );
}
