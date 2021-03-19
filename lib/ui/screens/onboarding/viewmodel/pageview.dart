import 'package:flutter/foundation.dart';

class OnboardingViewModel extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateIndex(int value) {
    _currentIndex = value;

    notifyListeners();
  }
}
