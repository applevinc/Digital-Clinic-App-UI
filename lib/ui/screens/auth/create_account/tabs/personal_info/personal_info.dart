import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/input_field.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/personal_info/layouts/select_gender.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/personal_info/layouts/upload_photo.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:digital_clinic/ui/widgets/input_mutiline_textfield.dart';
import 'package:digital_clinic/ui/widgets/select_option.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalInfoTab extends StatefulWidget {
  @override
  _PersonalInfoTabState createState() => _PersonalInfoTabState();
}

class _PersonalInfoTabState extends State<PersonalInfoTab> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GenderStatusProvider()),
        ChangeNotifierProvider(create: (context) => SelectOptionColorProvider()),
      ],
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Text(
                'Complete your profile please. This info might be useful for your doctors',
              ),
              SizedBox(height: 15),
              UploadPhoto(),
              Divider(
                color: Colors.grey[200],
                thickness: 3.0,
              ),
              SelectOption(
                title: 'I\'m a',
                option1: 'patient',
                option2: 'doctor',
              ),
              SizedBox(height: 15),
              InputField(
                label: 'FULL NAME',
                hintText: 'Enter your full name',
              ),
              SizedBox(height: 15),
              SelectGender(),
              SizedBox(height: 15),
              InputField(
                label: 'AGE',
                hintText: 'Enter your age',
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey[200],
                thickness: 3.0,
              ),
              SizedBox(height: 15),
              InputField(
                label: 'CITY',
                hintText: 'Enter your city',
              ),
              SizedBox(height: 15),
              InputMultiLineTextField(
                label: 'ADDRESS',
                hintText: 'Enter your address',
              ),
              SizedBox(height: 15),
              InputField(
                label: 'EMERGENCY NUMBER',
                hintText: 'Enter the number',
              ),
              SizedBox(height: 15),
              CustomButton(
                label: 'NEXT',
                onPressed: () {
                  // move to health tab
                  DefaultTabController.of(context).animateTo(1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
