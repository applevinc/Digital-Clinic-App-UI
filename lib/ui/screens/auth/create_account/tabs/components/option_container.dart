import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class OptionContainer extends StatelessWidget {
  const OptionContainer({
    Key key,
    this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: CustomColors.backgroundColor,
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
