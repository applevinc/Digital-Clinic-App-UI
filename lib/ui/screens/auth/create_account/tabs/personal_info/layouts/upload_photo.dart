import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            //color: CustomColors.backgroundColor,
            color: AppColors.backgroundColor,
          ),
          child: Icon(Icons.upload_file),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.backgroundColor,
            elevation: 0.0,
            side: BorderSide(
              color: Colors.grey[300],
              width: 1.0,
            ),
          ),
          onPressed: () {
            // action to upload from phone gallery
          },
          child: Row(
            children: [
              Icon(
                Icons.upload_file,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Text(
                'UPLOAD PHOTO',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
