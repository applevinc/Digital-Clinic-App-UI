import 'package:digital_clinic/ui/screens/related_articles/layouts/hashtags_listview.dart';
import 'package:digital_clinic/ui/screens/related_articles/layouts/stories_listview.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
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
            fontSize: 17.0.sp,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.filter_alt_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          CustomSearchBar(hintText: 'Search Articles'),
          _Body(),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Hot themes
        _HeadLine1(),
        HashtagsListView(),
        StoriesListView(),
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
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.0.sp,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              color: CustomColors.lightText,
              fontSize: 10.0.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
