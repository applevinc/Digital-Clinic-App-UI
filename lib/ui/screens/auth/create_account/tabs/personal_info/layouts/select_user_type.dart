import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/option_container.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectedUserType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stateProvider = context.watch<SelectUserTypeColorProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'I\'M A',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  stateProvider.selectPatient();
                },
                child: OptionContainer(
                  label: 'Patient',
                  backgroundColor: stateProvider.patientBackgroundColor,
                  borderColor: stateProvider.patientBorderColor,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  stateProvider.selectDoctor();
                },
                child: OptionContainer(
                  label: 'Doctor',
                  backgroundColor: stateProvider.doctorBackgroundColor,
                  borderColor: stateProvider.doctorBorderColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class SelectUserTypeColorProvider extends ChangeNotifier {
  bool isPatient = false;
  bool isDoctor = false;

  Color _patientBackgroundColor = CustomColors.backgroundColor;
  Color _patientBorderColor = Colors.grey[300];
  Color _doctorBackgroundColor = CustomColors.backgroundColor;
  Color _doctorBorderColor = Colors.grey[300];

  Color get patientBackgroundColor => _patientBackgroundColor;
  Color get patientBorderColor => _patientBorderColor;
  Color get doctorBackgroundColor => _doctorBackgroundColor;
  Color get doctorBorderColor => _doctorBorderColor;

  void selectPatient() {
    _unSelectDoctor();
    isPatient = true;
    _patientBackgroundColor = CustomColors.lightMoodyBlue;
    _patientBorderColor = CustomColors.moodyBlue;

    notifyListeners();
  }

  void selectDoctor() {
    _unSelectPatient();
    isDoctor = true;
    _doctorBackgroundColor = CustomColors.lightMoodyBlue;
    _doctorBorderColor = CustomColors.moodyBlue;
  }

  void _unSelectPatient() {
    isPatient = false;
    _patientBackgroundColor = CustomColors.backgroundColor;
    _patientBorderColor = Colors.grey[300];

    notifyListeners();
  }

  void _unSelectDoctor() {
    isDoctor = false;
    _doctorBackgroundColor = CustomColors.backgroundColor;
    _doctorBorderColor = Colors.grey[300];

    notifyListeners();
  }
}
