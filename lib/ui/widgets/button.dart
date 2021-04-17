import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    this.label,
    this.onPressed,
    this.backgroundColor,
    this.labelColor,
  }) : super(key: key);

  final String label;
  final Function onPressed;
  final Color backgroundColor;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          side: BorderSide.none,
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: labelColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
