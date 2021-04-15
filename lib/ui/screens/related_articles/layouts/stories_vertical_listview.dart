import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/screens/related_articles/widgets/likes.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StoriesVerticalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'All Stories',
            style: CustomTheme.lightTheme.textTheme.headline1,
          ),
          SizedBox(height: 10),
          _StoryAlertContainer(),
          SizedBox(height: 10),
          _StoryListItemContainer(),
          _StoryListItemContainer(),
          _StoryListItemContainer(),
          //_BuildStoryListView(),
        ],
      ),
    );
  }
}

class _StoryListItemContainer extends StatelessWidget {
  const _StoryListItemContainer({Key key}) : super(key: key);

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
            Images.onboarding1,
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

class _StoryAlertContainer extends StatelessWidget {
  const _StoryAlertContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: CustomColors.moodyBlue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'A small river named Duden',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12.0.sp,
            ),
          ),
          Text(
            '2 hours ago',
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 9.0.sp,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Likes(color: Colors.white),
              Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 14.0.sp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
