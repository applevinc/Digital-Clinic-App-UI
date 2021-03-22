import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/option_container.dart';
import 'package:flutter/material.dart';

class SelectGender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            OptionContainer(label: 'Male'),
            SizedBox(width: 10),
            OptionContainer(label: 'Female'),
            SizedBox(width: 10),
            OptionContainer(label: 'Other'),
          ],
        )
      ],
    );
  }
}
