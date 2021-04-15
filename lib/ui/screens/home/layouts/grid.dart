import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/screens/clinics/clinics.dart';
import 'package:digital_clinic/ui/screens/related_articles/related_articles.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BuildGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: 20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 1.3,
        ),
        itemCount: gridItem.length,
        itemBuilder: (context, index) {
          return _GridItemContainer(index);
        },
      ),
    );
  }
}

class _GridItemContainer extends StatelessWidget {
  const _GridItemContainer(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gridItem[index].page),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: CustomColors.lightMoodyBlue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(
                gridItem[index].iconPath,
                height: 7.5.h,
                width: 8.5.w,
              ),
            ),
            Spacer(),
            Text(
              gridItem[index].title,
              style: TextStyle(
                fontSize: 12.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Short Description',
              style: TextStyle(
                fontSize: 10.0.sp,
                color: CustomColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem {
  final String title;
  final String iconPath;
  final Widget page;

  GridItem({
    this.title,
    this.iconPath,
    this.page,
  });
}

List<GridItem> gridItem = <GridItem>[
  GridItem(
    title: 'Doctors',
    iconPath: Images.doctor,
    page: ClinicsPage(),
  ),
  GridItem(
    title: 'Clinics',
    iconPath: Images.clinic,
    page: ClinicsPage(),
  ),
  GridItem(
    title: 'Specialities',
    iconPath: Images.speciality,
    page: ClinicsPage(),
  ),
  GridItem(
    title: 'Labs',
    iconPath: Images.lab,
    page: ClinicsPage(),
  ),
  GridItem(
    title: 'Insurance',
    iconPath: Images.insurance,
    page: ClinicsPage(),
  ),
  GridItem(
    title: 'Related Articles',
    iconPath: Images.articles,
    page: RelatedArticlesPage(),
  ),
];
