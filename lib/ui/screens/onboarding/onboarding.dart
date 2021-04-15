import 'package:digital_clinic/models/pageview.dart';
import 'package:digital_clinic/ui/screens/onboarding/layouts/button.dart';
import 'package:digital_clinic/ui/screens/onboarding/layouts/indicator.dart';
import 'package:digital_clinic/ui/screens/onboarding/layouts/pageview_body.dart';
import 'package:digital_clinic/ui/screens/onboarding/viewmodel/pageview.dart';
import 'package:digital_clinic/ui/screens/auth/widgets/social_login_option.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pageViewModel = context.watch<OnboardingViewModel>();

    return Scaffold(
      extendBodyBehindAppBar: true,

      // when at pageview, show an appbar with skip button
      appBar: pageViewModel.currentIndex != onboardingData.length - 1
          ? AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              toolbarHeight: 10.0.h,
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: OutlinedButton(
                    onPressed: () {
                      pageViewModel.next();
                    },
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
            )

          // when at last pageview, show an empty appbar
          : AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              toolbarHeight: 10.0.h,
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
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PageViewBody(),
                  OnboardingIndicator(),
                  Spacer(),
                  OnboardingButton(),
                  Spacer(),
                  SocialLoginsOption(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
