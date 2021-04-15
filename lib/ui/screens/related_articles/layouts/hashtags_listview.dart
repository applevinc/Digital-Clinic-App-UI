import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HashtagsListView extends StatelessWidget {
  const HashtagsListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hashTags.length,
        padding: EdgeInsets.all(10),
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
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: CustomColors.moodyBlue.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: CustomColors.moodyBlue),
        ),
        child: Text(
          hashTags[index],
          style: TextStyle(
            color: CustomColors.moodyBlue,
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
