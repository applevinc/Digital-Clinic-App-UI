import 'package:digital_clinic/models/pageview.dart';
import 'package:digital_clinic/ui/screens/onboarding/viewmodel/pageview.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

class OnboardingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentIndex = context.watch<OnboardingViewModel>().currentIndex;

    return SizedBox(
      width: 82.0.w,
      child: currentIndex != onboarding.length - 1
          ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: CustomColors.moodyBlue,
              ),
              onPressed: () {},
              child: Text(
                'NEXT',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          : ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: CustomColors.moodyBlue,
              ),
              onPressed: () {},
              child: Text(
                'LET\'s START',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}
