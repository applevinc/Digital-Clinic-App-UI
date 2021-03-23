import 'package:digital_clinic/ui/screens/auth/create_account/tabs/health_info/health_info.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/personal_info/personal_info.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Create Account',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorWeight: 4.0,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: '1. PERSONAL INFO'),
              Tab(text: '2. HEALTH INFO'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PersonalInfoTab(),
            HealthInfoPage(),
          ],
        ),
      ),
    );
  }
}
