import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StoryListItemContainer extends StatelessWidget {
  const StoryListItemContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Image.asset(
            AppImages.onboarding1,
            height: 80,
            width: 80,
            fit: BoxFit.fitHeight,
          ),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'A small river named Duden',
                  style: CustomTheme.lightTheme.textTheme.headline1,
                ),
                Text(
                  '2 hours ago',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 9.0.sp,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.black45,
                      size: 14.0.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
