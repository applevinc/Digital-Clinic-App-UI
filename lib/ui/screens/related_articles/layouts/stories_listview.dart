import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StoriesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 40.0.h,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          children: [
            _StoryItem(),
            _StoryItem(),
          ],
        ),
      ),
    );
  }
}

class _StoryItem extends StatelessWidget {
  const _StoryItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  Images.onboarding1,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                ),
                Row(
                  children: [
                    Icon(Icons.alarm_add_rounded),
                    SizedBox(width: 1),
                    Text('3 Min'),
                  ],
                )
              ],
            ),
            Text('Far far away, behind the word mountains'),
            Text('2 hours ago'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _Likes(),
                _Share(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Share extends StatelessWidget {
  const _Share({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.share_rounded),
          SizedBox(width: 5),
          Icon(Icons.bookmark_border_rounded),
        ],
      ),
    );
  }
}

class _Likes extends StatelessWidget {
  const _Likes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.favorite_border_rounded),
          Text(
            '155',
            style: TextStyle(color: CustomColors.lightText),
          ),
        ],
      ),
    );
  }
}
