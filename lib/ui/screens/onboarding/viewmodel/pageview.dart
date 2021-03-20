import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OnboardingViewModel extends ChangeNotifier {
  int _currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  int get currentIndex => _currentIndex;
  PageController get pageController => _pageController;

  void updateIndex(int value) {
    _currentIndex = value;

    notifyListeners();
  }

  void next() {
    _currentIndex = _currentIndex + 1;

    _pageController.animateToPage(
      _currentIndex,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );

    notifyListeners();
  }
}
