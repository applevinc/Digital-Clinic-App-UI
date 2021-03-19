import 'package:digital_clinic/ui/screens/onboarding/layouts/button.dart';
import 'package:digital_clinic/ui/screens/onboarding/layouts/indicator.dart';
import 'package:digital_clinic/ui/screens/onboarding/layouts/pageview_body.dart';
import 'package:digital_clinic/ui/screens/onboarding/layouts/social_logins.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 10.0.h,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.white),
              ),
              child: Text(
                'SKIP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PageViewBody(),
                OnboardingIndicator(),
                SizedBox(height: 6.2.h),
                OnboardingButton(),
                SizedBox(height: 3.1.h),
                Text(
                  'OR CONNECT USING',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.1.h),
                SocialLogins(),
                SizedBox(height: 3.1.h),
              ],
            ),
          ),
        );
      },
    );
  }
}
