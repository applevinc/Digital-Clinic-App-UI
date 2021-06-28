import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key key,
    this.hintText,
    this.obscureText,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.backgroundColor,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        contentPadding: new EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 20,
        ),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.moodyBlue.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.moodyBlue.withOpacity(0.2),
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
