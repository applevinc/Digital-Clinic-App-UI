import 'dart:async';

import 'package:digital_clinic/ui/screens/auth/create_account/create_account.dart';
import 'package:digital_clinic/ui/screens/auth/forgot_password.dart';
import 'package:digital_clinic/ui/screens/auth/sign_up.dart';
import 'package:digital_clinic/ui/screens/auth/widgets/custom_textformfield.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
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
      child: Flexible(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
            ),
            CustomButton(
              label: 'SIGN IN',
              onPressed: () {
                // Validate returns true if the form is valid, otherwise false.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccountPage(),
                      ));
                }
              },
            ),
            CustomButton(
              label: 'SIGN UP',
              labelColor: AppColors.moodyBlue,
              backgroundColor: AppColors.backgroundColor,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUpPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
