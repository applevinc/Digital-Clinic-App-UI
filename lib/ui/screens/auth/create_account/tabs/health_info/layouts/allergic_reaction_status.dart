import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/option_container.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllergicReactionStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stateProvider = context.watch<AllergicReactionColorProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ALLERGIC REACTION',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  stateProvider.selectYes();
                },
                child: OptionContainer(
                  label: 'YES',
                  backgroundColor: stateProvider._yesContainerBackgroundColor,
                  borderColor: stateProvider._yesContainerBorderColor,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  stateProvider.selectNo();
                },
                child: OptionContainer(
                  label: 'NO',
                  backgroundColor: stateProvider._noContainerBackgroundColor,
                  borderColor: stateProvider._noContainerBorderColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class AllergicReactionColorProvider extends ChangeNotifier {
  bool isYes = false;
  bool isNo = false;

  Color _yesContainerBackgroundColor = CustomColors.backgroundColor;
  Color _yesContainerBorderColor = Colors.grey[300];
  Color _noContainerBackgroundColor = CustomColors.backgroundColor;
  Color _noContainerBorderColor = Colors.grey[300];

  Color get yesContainerBackgroundColor => _yesContainerBackgroundColor;
  Color get yesContainerBorderColor => _yesContainerBorderColor;
  Color get noContainerBackgroundColor => _noContainerBackgroundColor;
  Color get noContainerBorderColor => _noContainerBorderColor;

  void selectYes() {
    _unSelectNo();
    isYes = true;
    _yesContainerBackgroundColor = CustomColors.lightMoodyBlue;
    _yesContainerBorderColor = CustomColors.moodyBlue;

    notifyListeners();
  }

  void selectNo() {
    _unSelectYes();
    isNo = true;
    _noContainerBackgroundColor = CustomColors.lightMoodyBlue;
    _noContainerBorderColor = CustomColors.moodyBlue;
  }

  void _unSelectYes() {
    isYes = false;
    _yesContainerBackgroundColor = CustomColors.backgroundColor;
    _yesContainerBorderColor = Colors.grey[300];

    notifyListeners();
  }

  void _unSelectNo() {
    isNo = false;
    _noContainerBackgroundColor = CustomColors.backgroundColor;
    _noContainerBorderColor = Colors.grey[300];

    notifyListeners();
  }
}
