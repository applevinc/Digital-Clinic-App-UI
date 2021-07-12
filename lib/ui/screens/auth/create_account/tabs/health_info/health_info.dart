import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/input_field.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/health_info/layouts/allergic_reaction_status.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/health_info/layouts/select_blood_group.dart';
import 'package:digital_clinic/ui/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:digital_clinic/ui/widgets/select_option.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HealthInfoPage extends StatefulWidget {
  @override
  _HealthInfoPageState createState() => _HealthInfoPageState();
}

class _HealthInfoPageState extends State<HealthInfoPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AllergicReactionColorProvider()),
        ChangeNotifierProvider(create: (context) => SelectOptionColorProvider()),
      ],
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              InputField(
                label: 'WEIGHT',
                hintText: 'Enter your weight',
              ),
              SizedBox(height: 15),
              InputField(
                label: 'HEIGHT',
                hintText: 'Enter your weight',
              ),
              SizedBox(height: 15),
              SelectBloodGroup(),
              SizedBox(height: 15),
              SelectOption(
                title: 'Allergic reaction',
                option1: 'yes',
                option2: 'No',
              ),
              SizedBox(height: 15),
              CustomButton(
                label: 'CREATE ACCOUNT',
                onPressed: () {
                  // move to health tab
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
