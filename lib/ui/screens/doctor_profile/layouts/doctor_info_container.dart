import 'package:digital_clinic/ui/screens/booking/booking.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/circular_avatar.dart';
import 'package:digital_clinic/ui/widgets/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DoctorInfoContainer extends StatelessWidget {
  const DoctorInfoContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0.w,
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          // video visit and message icon
          Widget1(),

          CustomCircularAvatar(
            radius: 40,
            position: 2,
            size: 14,
          ),
          SizedBox(height: 20),

          Text(
            'Dr. Kenjo Assou',
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
          SizedBox(height: 10),

          _Rating(),
          SizedBox(height: 20),

          // location and experience
          Widget2(),
          SizedBox(height: 20),

          _Button()
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // go to booking page
        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingPage()));
      },
      child: Container(
        width: 250,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.moodyBlue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.event_outlined, color: Colors.white),
            SizedBox(width: 10),
            Text(
              'Book Appointment'.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 2),
        _Widget2Item(
          icon: Icons.room_outlined,
          title: 'New York',
          subtitle: 'Location',
        ),
        Spacer(flex: 4),
        _Widget2Item(
          icon: Icons.account_box_outlined,
          title: '20 Years',
          subtitle: 'Experience',
        ),
        Spacer(flex: 2),
      ],
    );
  }
}

class _Widget2Item extends StatelessWidget {
  const _Widget2Item({
    Key key,
    this.icon,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final IconData icon;
  final title;
  final subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: AppColors.lightMoodyBlue,
            ),
          ),
          child: Icon(
            icon,
            size: 14,
            color: AppColors.moodyBlue,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
            SizedBox(height: 5),
            Text(
              subtitle,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: AppColors.grey,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '5.0',
          style: TextStyle(
            color: AppColors.moodyBlue,
            fontWeight: FontWeight.w700,
            fontSize: 17,
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          height: 30,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Icon(
              Icons.star,
              size: 17,
              color: AppColors.moodyBlue,
            ),
          ),
        ),
      ],
    );
  }
}

class Widget1 extends StatelessWidget {
  const Widget1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        IconContainer(
          icon: Icons.message_outlined,
          backgroundColor: AppColors.lightMoodyBlue,
          borderColor: AppColors.moodyBlue,
        ),
      ],
    );
  }
}
