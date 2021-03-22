import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/screens/auth/layouts/heading_text.dart';
import 'package:digital_clinic/ui/screens/auth/layouts/subheadline_text.dart';
import 'package:digital_clinic/ui/screens/auth/widgets/custom_textformfield.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key key}) : super(key: key);

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
                    image: AssetImage(Images.onboarding2),
                    colorFilter: ColorFilter.mode(
                      CustomColors.moodyBlue.withOpacity(1.0),
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
        Image.asset(Images.logo),
        SizedBox(height: 6.2.h),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          width: 91.0.w,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AuthHeadingText('Reset Password'),
              AuthSubHeadLine('Please enter your email address'),
              AuthSubHeadLine('A code will be sent to your email'),
              SizedBox(height: 3.0.h),
              CustomTextFormField(
                hintText: 'Email',
                obscureText: false,
              ),
              TextButton(
                child: Text(
                  'I didn \'t recieve a code',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
              CustomButton(
                label: 'CONTINUE',
                labelColor: Colors.white,
                //backgroundColor: CustomColors.moodyBlue,
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
