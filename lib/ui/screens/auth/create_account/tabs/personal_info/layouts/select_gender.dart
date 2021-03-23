import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/option_container.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectGender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stateProvider = context.watch<GenderStatusProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  stateProvider.selectMale();
                },
                child: OptionContainer(
                  label: 'Male',
                  backgroundColor: stateProvider._maleBackgroundColor,
                  borderColor: stateProvider._maleBorderColor,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  stateProvider.selectFemale();
                },
                child: OptionContainer(
                  label: 'Female',
                  backgroundColor: stateProvider._femaleBackgroundColor,
                  borderColor: stateProvider._femaleBorderColor,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  stateProvider.selectOther();
                },
                child: OptionContainer(
                  label: 'Other',
                  backgroundColor: stateProvider._otherBackgroundColor,
                  borderColor: stateProvider._otherBorderColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class GenderStatusProvider extends ChangeNotifier {
  bool isMale = false;
  bool isFemale = false;
  bool isOther = false;

  Color _maleBackgroundColor = CustomColors.backgroundColor;
  Color _maleBorderColor = Colors.grey[300];
  Color _femaleBackgroundColor = CustomColors.backgroundColor;
  Color _femaleBorderColor = Colors.grey[300];
  Color _otherBackgroundColor = CustomColors.backgroundColor;
  Color _otherBorderColor = Colors.grey[300];

  Color get yesContainerBackgroundColor => _maleBackgroundColor;
  Color get yesContainerBorderColor => _maleBorderColor;
  Color get noContainerBackgroundColor => _femaleBackgroundColor;
  Color get noContainerBorderColor => _femaleBorderColor;
  Color get otherBackgroundColor => _otherBackgroundColor;
  Color get otherBorderColor => _otherBorderColor;

  void selectMale() {
    _unSelectFemale();
    _unSelectOther();
    isMale = true;
    _maleBackgroundColor = CustomColors.lightMoodyBlue;
    _maleBorderColor = CustomColors.moodyBlue;

    notifyListeners();
  }

  void selectFemale() {
    _unSelectMale();
    _unSelectOther();
    isFemale = true;
    _femaleBackgroundColor = CustomColors.lightMoodyBlue;
    _femaleBorderColor = CustomColors.moodyBlue;
  }

  void selectOther() {
    _unSelectMale();
    _unSelectFemale();
    isOther = true;
    _otherBackgroundColor = CustomColors.lightMoodyBlue;
    _otherBorderColor = CustomColors.moodyBlue;
  }

  void _unSelectMale() {
    isMale = false;
    _maleBackgroundColor = CustomColors.backgroundColor;
    _maleBorderColor = Colors.grey[300];

    notifyListeners();
  }

  void _unSelectFemale() {
    isFemale = false;
    _femaleBackgroundColor = CustomColors.backgroundColor;
    _femaleBorderColor = Colors.grey[300];

    notifyListeners();
  }

  void _unSelectOther() {
    isOther = false;
    _otherBackgroundColor = CustomColors.backgroundColor;
    _otherBorderColor = Colors.grey[300];

    notifyListeners();
  }
}
