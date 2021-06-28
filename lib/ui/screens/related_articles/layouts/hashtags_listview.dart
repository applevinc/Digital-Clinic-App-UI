import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class HashtagsListView extends StatelessWidget {
  const HashtagsListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hashTags.length,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          return _HashTagItem(index);
        },
      ),
    );
  }
}

class _HashTagItem extends StatelessWidget {
  const _HashTagItem(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.moodyBlue.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.moodyBlue),
        ),
        child: Text(
          hashTags[index],
          style: TextStyle(
            color: AppColors.moodyBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

List<String> hashTags = [
  '#ALL',
  '#COVID-19',
  '#PANDEMIC',
  '#IMMUNE',
];
