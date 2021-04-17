import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/input_field.dart';
import 'package:digital_clinic/ui/widgets/input_mutiline_textfield.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class EmergencyForm extends StatelessWidget {
  const EmergencyForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          bottom: 20,
          right: 20,
        ),
        child: Column(
          children: [
            InputField(
              label: 'CONFIRM YOUR ADDRESS',
            ),
            SizedBox(height: 10),
            InputField(
              label: 'WHAT\'s THE CASE?',
            ),
            SizedBox(height: 10),
            InputMultiLineTextField(label: 'COMMENTS'),
            Spacer(),
            CustomButton(
              label: 'CALL AN AMBULANCE',
              labelColor: Colors.white,
              backgroundColor: Colors.red,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
