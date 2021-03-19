import 'package:digital_clinic/ui/screens/onboarding/onboarding.dart';
import 'package:digital_clinic/ui/screens/onboarding/viewmodel/pageview.dart';
import 'package:digital_clinic/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizerUtil().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Digital Clinic',
          theme: CustomTheme.lightTheme,
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => OnboardingViewModel()),
            ],
            child: OnboardingPage(),
          ),
        );
      });
    });
  }
}
