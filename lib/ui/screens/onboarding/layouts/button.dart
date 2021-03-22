import 'package:digital_clinic/models/pageview.dart';
import 'package:digital_clinic/ui/screens/auth/sign_in.dart';
import 'package:digital_clinic/ui/screens/onboarding/viewmodel/pageview.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

class OnboardingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pageViewModel = context.watch<OnboardingViewModel>();

    return SizedBox(
      width: 82.0.w,
      child: pageViewModel.currentIndex != onboardingData.length - 1
          ? CustomButton(
              label: 'NEXT',
              onPressed: () {
                pageViewModel.next();
              },
            )
          : CustomButton(
              label: 'LETS \' START',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              },
            ),
    );
  }
}
