import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AuthHeadingText extends StatelessWidget {
  const AuthHeadingText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20.0.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}