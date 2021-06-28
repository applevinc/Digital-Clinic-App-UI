import 'package:digital_clinic/ui/images.dart';
import 'package:digital_clinic/ui/screens/doctor_profile/doctor_profile.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/circular_avatar.dart';
import 'package:digital_clinic/ui/widgets/icon_container.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
        itemCount: 30,
        itemBuilder: (context, index) {
          return _Item();
        },
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // navigate to doctor details page..
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DoctorProfilePage()));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            // Contains avatar and info
            _ShortInfo(),
            SizedBox(height: 10),
            // action to video call, chat and book appointment.
            _Actions(),
          ],
        ),
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Icon(
              Icons.video_call_rounded,
              color: AppColors.moodyBlue,
            ),
            SizedBox(width: 10),
            Text(
              'Video Visit',
              style: TextStyle(
                color: AppColors.moodyBlue,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            IconContainer(
              icon: Icons.insert_invitation_rounded,
              //backgroundColor: Colors.grey,
              borderColor: Colors.grey,
            ),
            SizedBox(width: 10),
            IconContainer(
              icon: Icons.chat_bubble_outline_rounded,
              backgroundColor: AppColors.lightMoodyBlue,
              borderColor: AppColors.moodyBlue,
            ),
          ],
        ),
      ],
    );
  }
}

class _ShortInfo extends StatelessWidget {
  const _ShortInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCircularAvatar(
          radius: 30,
          position: 2,
          size: 14,
        ),
        SizedBox(width: 10),

        // name, speciality and location
        _Info(),
        Spacer(),
        _Rating()
      ],
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'John Doe',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Ophthalmologist',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.grey,
            fontSize: 12,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(
              Icons.location_pin,
              size: 15,
              color: AppColors.grey,
            ),
            SizedBox(width: 5),
            Text(
              '68km away',
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 11,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _Rating extends StatelessWidget {
  const _Rating({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
        color: AppColors.lightMoodyBlue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: AppColors.moodyBlue,
            size: 15,
          ),
          SizedBox(width: 5),
          Text(
            '4.7',
            style: TextStyle(
              fontSize: 13,
              color: AppColors.moodyBlue,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
