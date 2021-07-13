import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:digital_clinic/ui/widgets/circular_avatar.dart';
import 'package:digital_clinic/ui/widgets/input_mutiline_textfield.dart';
import 'package:digital_clinic/ui/widgets/select_option.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            // contains circular avatar and price per hour
            _Widget1(),
            SizedBox(height: 15),
            SelectOption(
              title: 'Have you visited this doctor before?',
              option1: 'Yes',
              option2: 'No',
            ),
            SizedBox(height: 15),
            Divider(
              color: Colors.grey[200],
              thickness: 3.0,
            ),
            SizedBox(height: 15),
            SelectOption(
              title: 'Do you have insurance?',
              option1: 'Yes',
              option2: 'No',
            ),
            SizedBox(height: 15),
            Divider(
              color: Colors.grey[200],
              thickness: 3.0,
            ),
            SizedBox(height: 15),
            SelectOption(
              title: 'Select the reason for your visit?',
              option1: 'Treatment',
              option2: 'Consultation',
            ),
            SizedBox(height: 15),
            InputMultiLineTextField(
              label: 'Your Comment',
              hintText: 'Comment',
            ),
            SizedBox(height: 15),
            Divider(
              color: Colors.grey[200],
              thickness: 3.0,
            ),
            SizedBox(height: 15),
            _UploadEHRWidget(),
            SizedBox(height: 15),
            Divider(
              color: Colors.grey[200],
              thickness: 3.0,
            ),
            SizedBox(height: 15),
            SelectOption(
              title: 'Payment process',
              option1: 'After Visit',
              option2: 'Before Visit',
            ),
            SizedBox(height: 15),
            CustomButton(
              label: 'Next',
              onPressed: () {
                DefaultTabController.of(context).animateTo(2);
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _UploadEHRWidget extends StatelessWidget {
  const _UploadEHRWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You may upload related EHR files, if you wish',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 5),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'These files will only be available for your doctor',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: AppColors.grey,
            ),
          ),
        ),
        SizedBox(height: 10),
        _UploadButton()
      ],
    );
  }
}

class _UploadButton extends StatelessWidget {
  const _UploadButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // upload file
      },
      child: Container(
        width: 35.0.w,
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.lightMoodyBlue,
          border: Border.all(color: AppColors.moodyBlue),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.upload_outlined),
            SizedBox(width: 10),
            Text(
              'UPLOAD',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
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
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Naomi Yepes',
              style: TextStyle(
                fontSize: 20,
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
