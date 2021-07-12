import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/option_container.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectOption extends StatelessWidget {
  final String title;
  final String option1;
  final String option2;

  const SelectOption({
    Key key,
    @required this.title,
    @required this.option1,
    @required this.option2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var stateProvider = context.watch<SelectOptionColorProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  stateProvider.selectOption1();
                },
                child: OptionContainer(
                  label: option1,
                  backgroundColor: stateProvider.option1BackgroundColor,
                  borderColor: stateProvider.option1BorderColor,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  stateProvider.selectOption2();
                },
                child: OptionContainer(
                  label: option2,
                  backgroundColor: stateProvider.option2BackgroundColor,
                  borderColor: stateProvider.option2BorderColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class SelectOptionColorProvider extends ChangeNotifier {
  bool isOption1 = false;
  bool isOption2 = false;

  Color _option1BackgroundColor = AppColors.backgroundColor;
  Color _option1BorderColor = Colors.grey[300];
  Color _option2BackgroundColor = AppColors.backgroundColor;
  Color _option2BorderColor = Colors.grey[300];

  Color get option1BackgroundColor => _option1BackgroundColor;
  Color get option1BorderColor => _option1BorderColor;
  Color get option2BackgroundColor => _option2BackgroundColor;
  Color get option2BorderColor => _option2BorderColor;

  void selectOption1() {
    _unSelectOption2();
    isOption1 = true;
    _option1BackgroundColor = AppColors.lightMoodyBlue;
    _option1BorderColor = AppColors.moodyBlue;

    notifyListeners();
  }

  void selectOption2() {
    _unSelectOption1();
    isOption2 = true;
    _option2BackgroundColor = AppColors.lightMoodyBlue;
    _option2BorderColor = AppColors.moodyBlue;
  }

  void _unSelectOption1() {
    isOption1 = false;
    _option1BackgroundColor = AppColors.backgroundColor;
    _option1BorderColor = Colors.grey[300];

    notifyListeners();
  }

  void _unSelectOption2() {
    isOption2 = false;
    _option2BackgroundColor = AppColors.backgroundColor;
    _option2BorderColor = Colors.grey[300];

    notifyListeners();
  }
}
