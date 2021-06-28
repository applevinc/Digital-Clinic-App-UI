import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class DoctorInfoListTiles extends StatelessWidget {
  const DoctorInfoListTiles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemCount: _data.length,
      itemBuilder: (context, index) => _Item(index: index),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    var tileData = _data[index];

    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 2),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
          child: Icon(
            tileData.icon,
            color: AppColors.moodyBlue,
          ),
        ),
        SizedBox(width: 1),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tileData.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.moodyBlue,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _DoctorInfoListTileModel {
  final IconData icon;
  final String title;

  _DoctorInfoListTileModel({
    this.icon,
    this.title,
  });
}

final _data = [
  _DoctorInfoListTileModel(
    icon: Icons.business_center_outlined,
    title: 'Valid Insurances',
  ),
  _DoctorInfoListTileModel(
    icon: Icons.account_box_outlined,
    title: 'Experience & Qualification',
  ),
  _DoctorInfoListTileModel(
    icon: Icons.person_outlined,
    title: 'Personal Information',
  ),
  _DoctorInfoListTileModel(
    icon: Icons.star_border_outlined,
    title: 'Reviews',
  ),
  _DoctorInfoListTileModel(
    icon: Icons.room_outlined,
    title: 'Working Address',
  ),
];
