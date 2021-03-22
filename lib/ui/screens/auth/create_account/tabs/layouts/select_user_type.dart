import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/option_container.dart';
import 'package:flutter/material.dart';

class SelectedUserType extends StatelessWidget {
  const SelectedUserType({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'I\'M A',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            OptionContainer(label: 'Patient'),
            SizedBox(width: 10),
            OptionContainer(label: 'Doctor'),
          ],
        )
      ],
    );
  }
}
