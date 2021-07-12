import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/circular_avatar.dart';
import 'package:digital_clinic/ui/widgets/select_option.dart';
import 'package:flutter/material.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // contains circular avatar and price per hour
        _Widget1(),
        SelectOption(
          title: 'Have you visited this doctor before?',
          option1: 'yes',
          option2: 'no',
        ),
      ],
    );
  }
}

class _Widget1 extends StatelessWidget {
  const _Widget1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircularAvatar(
          radius: 30,
          position: 2,
          size: 14,
        ),
        Column(
          children: [
            Text(
              'Naomi Yepes',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ophthalmologist',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppColors.grey,
              ),
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Text(
              '\$35',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.moodyBlue,
              ),
            ),
            Text(
              'Hour',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppColors.moodyBlue,
              ),
            ),
          ],
        )
      ],
    );
  }
}
