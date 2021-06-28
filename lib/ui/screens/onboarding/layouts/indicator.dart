import 'package:digital_clinic/models/pageview.dart';
import 'package:digital_clinic/ui/screens/onboarding/viewmodel/pageview.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardingData.length,
        (index) => getIndicator(index, context),
      ),
    );
  }

  Padding getIndicator(int pageNo, BuildContext context) {
    var currentIndex = context.watch<OnboardingViewModel>().currentIndex;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 0.5.h,
        width: 10.6.w,
        decoration: BoxDecoration(
          color: currentIndex == pageNo
              ? AppColors.moodyBlue
              : AppColors.lightMoodyBlue.withOpacity(0.3),
        ),
      ),
    );
  }
}
