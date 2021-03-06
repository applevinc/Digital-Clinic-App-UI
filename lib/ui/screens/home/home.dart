import 'package:digital_clinic/ui/screens/home/layouts/emergency.dart';
import 'package:digital_clinic/ui/screens/home/layouts/grid.dart';
import 'package:digital_clinic/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          'Home Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomSearchBar(hintText: 'Search Doctors, Clinics...'),
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
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      children: [
        Emergency(),
        SizedBox(height: 10),
        BuildGridView(),
      ],
    );
  }
}
