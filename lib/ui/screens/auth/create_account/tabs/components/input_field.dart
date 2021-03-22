import 'package:digital_clinic/ui/screens/auth/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key key,
    this.label,
    this.hintText,
  }) : super(key: key);

  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        CustomTextFormField(
          hintText: hintText,
          obscureText: false,
        ),
      ],
    );
  }
}
