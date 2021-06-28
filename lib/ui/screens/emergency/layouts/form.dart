import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/input_field.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/input_mutiline_textfield.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EmergencyForm extends StatelessWidget {
  const EmergencyForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          bottom: 20,
          right: 20,
        ),
        child: Column(
          children: [
            InputField(
              label: 'CONFIRM YOUR ADDRESS',
            ),
            SizedBox(height: 10),
            InputField(
              label: 'WHAT\'s THE CASE?',
            ),
            SizedBox(height: 10),
            InputMultiLineTextField(label: 'COMMENTS'),
            Spacer(),
            CustomButton(
              label: 'CALL AN AMBULANCE',
              labelColor: Colors.white,
              backgroundColor: Colors.red,
              onPressed: () {
                showDialog(
                  context: context,
                  barrierColor: AppColors.moodyBlue.withOpacity(0.7),
                  builder: (context) => _EmergencyDialog(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class _EmergencyDialog extends StatelessWidget {
  const _EmergencyDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dividerColor = Colors.grey.withOpacity(0.4);
    double dividerThickness = 1;
    double dividerHeight = 50;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.redAccent.withOpacity(0.4),
            ),
            child: ImageIcon(
              AssetImage(AppImages.logo),
              color: Colors.red,
              size: 30,
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Your request has been accepted',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Medical help is on the way',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          _Widget(
            title: 'Hospital Name',
            subTitle: '138 Fernado Loop',
            icon: Icons.location_on_rounded,
          ),
          Divider(
            color: dividerColor,
            thickness: dividerThickness,
            height: dividerHeight,
          ),
          _Widget(
            title: 'Reason',
            subTitle: 'Asthma Attack',
            icon: Icons.health_and_safety_sharp,
          ),
          Divider(
            color: dividerColor,
            thickness: dividerThickness,
            height: dividerHeight,
          ),
          _AmbulanceReachTimeWidget(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              label: 'watch on map',
              onPressed: () {
                // go to map
              },
            ),
          )
        ],
      ),
    );
  }
}

class _AmbulanceReachTimeWidget extends StatelessWidget {
  const _AmbulanceReachTimeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0.w,
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.lightMoodyBlue,
        border: Border.all(color: AppColors.moodyBlue),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Text(
            'Ambulance will reach in',
            style: TextStyle(
              color: AppColors.moodyBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '02 : 45',
            style: TextStyle(
              color: AppColors.moodyBlue,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class _Widget extends StatelessWidget {
  const _Widget({
    Key key,
    this.title,
    this.subTitle,
    this.icon,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Color greyColor = Colors.grey.withOpacity(0.7);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: greyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            icon,
            color: greyColor,
          ),
        ],
      ),
    );
  }
}
