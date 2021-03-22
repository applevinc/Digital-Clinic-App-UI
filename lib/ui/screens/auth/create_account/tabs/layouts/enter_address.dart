import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Address',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            filled: true,
            fillColor: CustomColors.backgroundColor,
            hintText: 'Enter your address',
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            contentPadding: new EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 20,
            ),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: CustomColors.moodyBlue.withOpacity(0.2),
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: CustomColors.moodyBlue.withOpacity(0.2),
                width: 1.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}