import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/resources/styles.dart';
import 'package:flutter_clean_architecture/presentation/resources/theme_data.dart';
import 'package:flutter_clean_architecture/shared/extension/theme_data.dart';

import '../../gen/fonts.gen.dart';
import 'colors.dart';

const kDefaultPaddingLabelTabBar = 8.0;

abstract class AppTheme {
  static const _dividerTheme = DividerThemeData(
    space: 0,
    thickness: 1,
    color: AppColors.pattensBlue,
  );

  static String? get appFontFamily {
    return FontFamily.sFPro;
  }

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor, primary: AppColors.primaryColor),
      fontFamily: appFontFamily,
      appBarTheme: AppBarTheme(
        color: AppColors.white,
        titleTextStyle: AppStyles.title,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thickness: WidgetStateProperty.all(6.0),
        radius: const Radius.circular(3),
        minThumbLength: 90,
        thumbColor: WidgetStateProperty.all(AppColors.pattensBlue),
      ),
      scaffoldBackgroundColor: AppColors.background,
      dividerTheme: _dividerTheme,
      indicatorColor: AppColors.primaryColor,
      tabBarTheme: TabBarTheme(
        labelStyle: AppStyles.largeSemiBold,
        unselectedLabelStyle: AppStyles.largeSemiBold.copyWith(
          fontWeight: FontWeight.normal,
        ),
        labelColor: AppColors.primaryColor,
        unselectedLabelColor: AppColors.atlantis,
        indicatorSize: TabBarIndicatorSize.label,
        labelPadding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddingLabelTabBar,
        ),
      ),
    )..addOwn(
        Brightness.light,
        AppThemeData(
          textTheme: AppTextTheme(
            //
            primary: AppStyles.primary,
            primaryBold: AppStyles.primaryBold,
            medium: AppStyles.medium,
            mediumSemiBold: AppStyles.mediumSemiBold,
            mediumBold: AppStyles.mediumBold,
            small: AppStyles.small,
            smallBold: AppStyles.smallBold,
            largeSemiBold: AppStyles.largeSemiBold,
            largeBold: AppStyles.largeBold,
            xLarge: AppStyles.xLarge,
            xLargeBold: AppStyles.xLargeBold,
            xxLargeBold: AppStyles.xxLargeBold,
            xxxLargeSemiBold: AppStyles.xxxLargeSemiBold,
            xxxLargeBold: AppStyles.xxxLargeBold,
            //
            title: AppStyles.title,
            header: AppStyles.header,
            title2: AppStyles.title2,
          ),
          colorSchema: AppColorSchema(
            primary: AppColors.primaryColor,
            mainText: AppColors.mainTextColor,
            successColor: AppColors.successColor,
            mainStrokeColor: AppColors.mainStrokeColor,
            secondaryStrokeColor: AppColors.secondaryStrokeColor,
            mainBackgroundColor: AppColors.mainBackgroundColor,
            replaceTextColor: AppColors.replaceTextColor,
            warning: AppColors.warning,
            subTextColor: AppColors.subTextColor,
            secondaryBackgroundColors: AppColors.secondaryBackgroundColors,
          ),
        ),
      );
  }

  static ThemeData get darkTheme {
    return lightTheme.copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    )..addOwn(Brightness.dark, lightTheme.own());
  }
}
