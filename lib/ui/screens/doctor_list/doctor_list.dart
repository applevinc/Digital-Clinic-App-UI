import 'package:digital_clinic/ui/screens/doctor_list/layouts/doctors_listview.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class DoctorListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          'All Doctors',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomSearchBar(hintText: 'Search by category'),
          _Body(),
        ],
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
    return Flexible(
      child: Column(
        children: [
          // doctor list and card view
          _HeadLine(),
          DoctorsListView(),
        ],
      ),
    );
  }
}



class _HeadLine extends StatelessWidget {
  const _HeadLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            'Doctor List',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () {
                  // doctor list card view...
                },
                child: Text(
                  'Card View',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.view_carousel_rounded,
                color: AppColors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
