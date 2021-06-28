import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key key,
    this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.moodyBlue,
      width: 100.0.w,
      height: 8.3.h,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white.withOpacity(0.2),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          suffixIcon: Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
          contentPadding: new EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 20,
          ),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
