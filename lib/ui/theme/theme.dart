import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.moodyBlue,
      accentColor: AppColors.moodyBlue,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      fontFamily: 'Open Sans',
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: AppColors.moodyBlue,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(primary: Colors.white),
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 12.0.sp,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: AppColors.moodyBlue,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: AppColors.moodyBlue,
          shadowColor: Colors.white,
          elevation: 0.0,
          side: BorderSide(
            color: AppColors.moodyBlue,
            width: 1.0,
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.moodyBlue,
      ),
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
      ),
    );
  }
}
