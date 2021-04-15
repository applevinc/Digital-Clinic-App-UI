import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: CustomColors.moodyBlue,
      accentColor: CustomColors.moodyBlue,
      scaffoldBackgroundColor: CustomColors.backgroundColor,
      fontFamily: 'Open Sans',
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: CustomColors.moodyBlue,
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
          primary: CustomColors.moodyBlue,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: CustomColors.moodyBlue,
          shadowColor: Colors.white,
          elevation: 0.0,
          side: BorderSide(
            color: CustomColors.moodyBlue,
            width: 1.0,
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: CustomColors.moodyBlue,
      ),
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
      ),
    );
  }
}
