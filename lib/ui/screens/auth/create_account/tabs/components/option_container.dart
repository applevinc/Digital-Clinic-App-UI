import 'package:flutter/material.dart';

class OptionContainer extends StatelessWidget {
  const OptionContainer({
    Key key,
    this.label,
    this.backgroundColor,
    this.borderColor,
  }) : super(key: key);

  final String label;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        label.toUpperCase(),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
