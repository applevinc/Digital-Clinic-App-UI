import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/input_field.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/layouts/select_blood_group.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/layouts/select_yes_no.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class HealthInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            InputField(
              label: 'WEIGHT',
              hintText: 'Enter your weight',
            ),
            SizedBox(height: 15),
            InputField(
              label: 'HEIGHT',
              hintText: 'Enter your weight',
            ),
            SizedBox(height: 15),
            SelectBloodGroup(),
            SizedBox(height: 15),
            SelectYesOrNo('ALLERGIC REACTION'),
            SizedBox(height: 15),
            SelectYesOrNo('ANY CURRENT ILLNESSES'),
            SizedBox(height: 15),
            CustomButton(
              label: 'CREATE ACCOUNT',
              onPressed: () {
                // move to health tab
              },
            ),
          ],
        ),
      ),
    );
  }
}
