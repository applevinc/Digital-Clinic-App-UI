import 'package:digital_clinic/ui/images.dart';
import 'package:flutter/material.dart';

class CustomCircularAvatar extends StatelessWidget {
  const CustomCircularAvatar({
    Key key,
    @required this.radius,
    @required this.position,
    @required this.size,
  }) : super(key: key);

  final double radius;
  final double position;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundImage: AssetImage(
            AppImages.profile,
          ),
        ),
        Positioned(
          bottom: position,
          right: position,
          child: Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
        )
      ],
    );
  }
}
