import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/screens/auth/layouts/heading_text.dart';
import 'package:digital_clinic/ui/screens/auth/layouts/sign_up_form.dart';
import 'package:digital_clinic/ui/screens/auth/layouts/subheadline_text.dart';
import 'package:digital_clinic/ui/screens/auth/widgets/social_login_option.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Container(
                width: 100.0.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage(AppImages.onboarding2),
                    colorFilter: ColorFilter.mode(
                      AppColors.moodyBlue.withOpacity(1.0),
                      BlendMode.hardLight,
                    ),
                  ),
                ),
                child: _Body(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: 11.0.h),
        Image.asset(AppImages.logo),
        SizedBox(height: 6.2.h),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
          width: 100.0.w,
          color: Colors.white,
          child: Column(
            children: [
              AuthHeadingText('Sign Up'),
              AuthSubHeadLine('Please enter your credentials to proceed'),
              SizedBox(height: 20),
              SignUpForm(),
              SocialLoginsOption(),
            ],
          ),
        )
      ],
    );
  }
}
