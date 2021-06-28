import 'package:digital_clinic/ui/screens/related_articles/layouts/hashtags_listview.dart';
import 'package:digital_clinic/ui/screens/related_articles/layouts/stories_horizontal_listview.dart';
import 'package:digital_clinic/ui/screens/related_articles/layouts/stories_vertical_listview.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/theme/theme.dart';
import 'package:digital_clinic/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RelatedArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Related Articles',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchBar(hintText: 'Search Articles'),
        Flexible(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              _HeadLine1(),
              HashtagsListView(),
              StoriesHorizontalListView(),
              StoriesVerticalListView(),
            ],
          ),
        ),
      ],
    );
  }
}



class _HeadLine1 extends StatelessWidget {
  const _HeadLine1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hot Themes',
            style: CustomTheme.lightTheme.textTheme.headline1,
          ),
          Text(
            'See All',
            style: TextStyle(
              color: AppColors.lightText,
              fontSize: 10.0.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
