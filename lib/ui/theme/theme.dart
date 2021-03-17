import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: CustomColors.moodyBlue,
      accentColor: CustomColors.moodyBlue,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Open Sans',
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: CustomColors.moodyBlue,
      ),
    );
  }
}
