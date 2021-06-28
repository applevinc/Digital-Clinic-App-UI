import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/screens/clinics/clinics.dart';
import 'package:digital_clinic/ui/screens/related_articles/related_articles.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(bottom: 20),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1.5,
      ),
      itemCount: gridItem.length,
      itemBuilder: (context, index) {
        return _GridItemContainer(index);
      },
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
                color: AppColors.lightMoodyBlue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(
                gridItem[index].iconPath,
                height: 50,
                width: 35,
              ),
            ),
            Spacer(),
            Text(
              gridItem[index].title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
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
    iconPath: AppImages.doctor,
    page: ClinicsPage(),
  ),
  GridItem(
    title: 'Clinics',
    iconPath: AppImages.clinic,
    page: ClinicsPage(),
  ),
  GridItem(
    title: 'Specialities',
    iconPath: AppImages.speciality,
    page: ClinicsPage(),
  ),
  GridItem(
    title: 'Labs',
    iconPath: AppImages.lab,
    page: ClinicsPage(),
  ),
  GridItem(
    title: 'Insurance',
    iconPath: AppImages.insurance,
    page: ClinicsPage(),
  ),
  GridItem(
    title: 'Related Articles',
    iconPath: AppImages.articles,
    page: RelatedArticlesPage(),
  ),
];
