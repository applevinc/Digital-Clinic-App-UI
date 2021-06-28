import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ArticleFeatureImage extends StatelessWidget {
  const ArticleFeatureImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 100.0.w,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.onboarding3),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            AppColors.moodyBlue,
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Hashtag(),
            Text(
              'Covid-19 vaccine',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _ActivityItem(
                  icon: Icons.favorite_border_rounded,
                  text: '255',
                ),
                SizedBox(width: 20),
                _ActivityItem(
                  icon: Icons.timer,
                  text: '1 min',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ActivityItem extends StatelessWidget {
  const _ActivityItem({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _Hashtag extends StatelessWidget {
  const _Hashtag({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Text(
        "#Covid19",
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
