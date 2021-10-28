import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/themes/colors.dart';

class Themes {
  Themes._();
  static final ThemeData baseTheme = ThemeData.light();

  static ThemeData buildLightTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: _buildAppBarTheme(),
      textTheme: _buildLightTextTheme(),
      buttonTheme: _buildButtonTheme(),
    );
  }

  static AppBarTheme _buildAppBarTheme() {
    return AppBarTheme(
      elevation: 0,
    );
  }

  static ButtonThemeData _buildButtonTheme() {
    return ButtonThemeData(
      buttonColor: AppColors.primaryDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      height: 60,
      colorScheme: baseTheme.colorScheme.copyWith(
        primary: AppColors.white,
        secondary: AppColors.primaryDark,
      ),
    );
  }

  static TextTheme _buildLightTextTheme() {
    return baseTheme.textTheme
        .copyWith(
            // not in use
            headline1: baseTheme.textTheme.headline1!.copyWith(
              color: AppColors.black,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
            headline2: baseTheme.textTheme.headline2!.copyWith(
              color: AppColors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            headline3: baseTheme.textTheme.headline3!.copyWith(
              color: AppColors.black,
              height: 1.3,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            headline4: baseTheme.textTheme.headline4!.copyWith(
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            headline5: baseTheme.textTheme.headline5!.copyWith(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            headline6: baseTheme.textTheme.headline6!.copyWith(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            subtitle1: baseTheme.textTheme.subtitle1!.copyWith(
              color: AppColors.primaryDark,
              height: 1.5,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            subtitle2: baseTheme.textTheme.subtitle2!.copyWith(
              color: AppColors.lightSilver,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            bodyText1: baseTheme.textTheme.bodyText1!.copyWith(
              color: AppColors.primaryDark,
              height: 1.5,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            bodyText2: baseTheme.textTheme.bodyText2!.copyWith(
              color: AppColors.lightSilver,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            button: baseTheme.textTheme.button!.copyWith(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            caption: baseTheme.textTheme.subtitle1!.copyWith(
              color: AppColors.primaryDark,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ))
        .apply(
          fontFamily: 'Poppins',
        );
  }
}
