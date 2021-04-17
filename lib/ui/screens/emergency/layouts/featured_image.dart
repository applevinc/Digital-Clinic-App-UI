import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FeaturedImage extends StatelessWidget {
  const FeaturedImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0.h,
      padding: EdgeInsets.all(20),
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.emergencyBus),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            CustomColors.moodyBlue.withOpacity(1.0),
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Hi Segrey!',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '6 Ambulances',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17.0.sp,
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.near_me_outlined,
                color: Colors.white,
              ),
              Text(
                'Available in 6 km',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
