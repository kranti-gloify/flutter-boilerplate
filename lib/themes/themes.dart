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
            displayLarge: baseTheme.textTheme.displayLarge!.copyWith(
              color: AppColors.black,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
            displayMedium: baseTheme.textTheme.displayMedium!.copyWith(
              color: AppColors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            displaySmall: baseTheme.textTheme.displaySmall!.copyWith(
              color: AppColors.black,
              height: 1.3,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            headlineMedium: baseTheme.textTheme.headlineMedium!.copyWith(
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            headlineSmall: baseTheme.textTheme.headlineSmall!.copyWith(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            titleLarge: baseTheme.textTheme.titleLarge!.copyWith(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            titleMedium: baseTheme.textTheme.titleMedium!.copyWith(
              color: AppColors.primaryDark,
              height: 1.5,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            titleSmall: baseTheme.textTheme.titleSmall!.copyWith(
              color: AppColors.lightSilver,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            bodyLarge: baseTheme.textTheme.bodyLarge!.copyWith(
              color: AppColors.primaryDark,
              height: 1.5,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            bodyMedium: baseTheme.textTheme.bodyMedium!.copyWith(
              color: AppColors.lightSilver,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            labelLarge: baseTheme.textTheme.labelLarge!.copyWith(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            bodySmall: baseTheme.textTheme.titleMedium!.copyWith(
              color: AppColors.primaryDark,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ))
        .apply(
          fontFamily: 'Poppins',
        );
  }
}
