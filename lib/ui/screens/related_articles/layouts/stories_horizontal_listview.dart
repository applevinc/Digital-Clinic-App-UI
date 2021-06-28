import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/screens/article/article.dart';
import 'package:digital_clinic/ui/screens/related_articles/widgets/likes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StoriesHorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 310,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) => _StoryItem(),
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
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ArticlePage()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          width: 80.0.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _StoryItemImageStack(),
              Spacer(),
              _StoryItemMeta(),
            ],
          ),
        ),
      ),
    );
  }
}

class _StoryItemImageStack extends StatelessWidget {
  const _StoryItemImageStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 80.0.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            image: DecorationImage(
              image: AssetImage(AppImages.onboarding1),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black26,
                BlendMode.darken,
              ),
            ),
          ),
          child: Text(''),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Row(
            children: [
              Icon(
                Icons.alarm_add_rounded,
                color: Colors.white,
              ),
              SizedBox(width: 1),
              Text(
                '3 Min',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _StoryItemMeta extends StatelessWidget {
  const _StoryItemMeta({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Far far away, behind the word mountains',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '2 hours ago',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Likes(color: Colors.black45),
              _Share(),
            ],
          ),
        ],
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
          Icon(
            Icons.share_rounded,
            color: Colors.black45,
          ),
          SizedBox(width: 5),
          Icon(
            Icons.bookmark_border_rounded,
            color: Colors.black45,
          ),
        ],
      ),
    );
  }
}
