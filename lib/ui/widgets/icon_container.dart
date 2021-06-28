import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  IconContainer({
    Key key,
    this.icon,
    this.backgroundColor ,
    this.borderColor = AppColors.moodyBlue,
  }) : super(key: key);

  final IconData icon;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: borderColor),
      ),
      child: Icon(
        icon,
        color: borderColor,
      ),
    );
  }
}
