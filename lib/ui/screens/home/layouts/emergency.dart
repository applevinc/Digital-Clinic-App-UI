import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/screens/emergency/emergency.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Emergency extends StatelessWidget {
  const Emergency({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EmergencyPage()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(
                Images.emergency,
                // height: 10,
                // width: 10,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Emergency',
                  style: TextStyle(
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Short Description',
                  style: TextStyle(
                    fontSize: 10.0.sp,
                    color: CustomColors.grey,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_sharp,
              color: CustomColors.moodyBlue,
              size: 13.0.sp,
            )
          ],
        ),
      ),
    );
  }
}
