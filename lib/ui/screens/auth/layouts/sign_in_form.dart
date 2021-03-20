import 'package:digital_clinic/ui/screens/auth/sign_up.dart';
import 'package:digital_clinic/ui/screens/auth/widgets/custom_textformfield.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          CustomTextFormField(hintText: 'Email', obscureText: false),
          SizedBox(height: 15),
          CustomTextFormField(hintText: 'Password', obscureText: true),
          SizedBox(height: 1),
          TextButton(
            child: Text(
              'Forgot Password?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
          SizedBox(height: 8.0.h),
          CustomButton(
            label: 'SIGN IN',
            color: CustomColors.moodyBlue,
            onPressed: () {
              // Validate returns true if the form is valid, otherwise false.
              if (_formKey.currentState.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.

                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }

              // go to create account page
            },
          ),
          CustomButton(
            label: 'SIGN UP',
            labelColor: CustomColors.moodyBlue,
            color: CustomColors.backgroundColor,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUpPage()));
            },
          )
        ],
      ),
    );
  }
}
