import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AuthSubHeadLine extends StatelessWidget {
  const AuthSubHeadLine(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 11.0.sp,
      ),
    );
  }
}
