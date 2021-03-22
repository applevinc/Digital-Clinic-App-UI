import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/option_container.dart';
import 'package:flutter/material.dart';

class SelectYesOrNo extends StatelessWidget {
  const SelectYesOrNo(this.label);

  final String label;

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
        Row(
          children: [
            OptionContainer(label: 'YES'),
            SizedBox(width: 10),
            OptionContainer(label: 'NO'),
          ],
        )
      ],
    );
  }
}

