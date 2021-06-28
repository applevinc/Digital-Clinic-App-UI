import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class SelectBloodGroup extends StatelessWidget {
  const SelectBloodGroup({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BLOOD GROUP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        _BloodGroupDropdown()
      ],
    );
  }
}

class _BloodGroupDropdown extends StatelessWidget {
  const _BloodGroupDropdown({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey[300]),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: 'A+',
          isExpanded: true,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 20,
          elevation: 0,
          onChanged: (String newValue) {
            // update dropdown value with selected
          },
          items: <String>['A+', 'B+', 'AB', 'O+']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
