import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/icon_container.dart';
import 'package:digital_clinic/ui/widgets/story_list_item_container.dart';
import 'package:flutter/material.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        padding: const EdgeInsets.all(20),
        physics: BouncingScrollPhysics(),
        children: [
          // Author Details
          _Wiget(),
          Text(
            '25 May, 2021',
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),

          Text(
            'The function takes a round number as an argument. Tickets from one round are not valid in another round. The user must have bought tickets in the specified round, and the winning numbers for the round must have been drawn already in order to claim rewards. The user '
            's tickets and the winning numbers for the round are pulled from the state tree to myNumbers and winningNumbers. The total reward paid out to the user will be tracked with payout. Next, we count the number of matches between the user ’/s numbers and the winning numbers.',
            softWrap: true,
          ),
          SizedBox(height: 10),

          Row(
            children: [
              _Hashtag(label: 'Covid-19'),
              SizedBox(width: 10),
              _Hashtag(label: 'Pandemic'),
              SizedBox(width: 10),
              _Hashtag(label: 'Coronavirus'),
            ],
          ),
          SizedBox(height: 10),

          Row(
            children: [
              IconContainer(
                icon: Icons.share_rounded,
                backgroundColor: AppColors.lightMoodyBlue,
              ),
              SizedBox(width: 10),
              IconContainer(
                icon: Icons.favorite_border_rounded,
                backgroundColor: AppColors.lightMoodyBlue,
              ),
            ],
          ),
          SizedBox(height: 10),

          Divider(thickness: 1, color: AppColors.grey),

          StoryListItemContainer(),
          StoryListItemContainer(),
          StoryListItemContainer(),
        ],
      ),
    );
  }
}

class _Wiget extends StatelessWidget {
  const _Wiget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Image.asset(
            AppImages.onboarding1,
            height: 70,
            width: 70,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bernarr Dominik',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Physician',
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightMoodyBlue,
          ),
          child: Icon(
            Icons.bookmark_border_rounded,
            color: AppColors.moodyBlue,
          ),
        )
      ],
    );
  }
}

class _Hashtag extends StatelessWidget {
  const _Hashtag({
    Key key,
    this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.moodyBlue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        "#$label",
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
