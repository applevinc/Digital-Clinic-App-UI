import 'package:digital_clinic/ui/screens/doctor_profile/layouts/doctor_info_container.dart';
import 'package:digital_clinic/ui/screens/doctor_profile/layouts/doctor_info_listview.dart';
import 'package:flutter/material.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Doctors\'s Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.room_outlined),
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
    return ListView(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        DoctorInfoContainer(),
        DoctorInfoListTiles(),
      ],
    );
  }
}
