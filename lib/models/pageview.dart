import 'package:digital_clinic/ui/images.dart';

class PageViewModel {
  final String img;
  final String title;
  final String description;

  PageViewModel({
    this.img,
    this.title,
    this.description,
  });
}

final onboardingData = [
  PageViewModel(
      img: Images.onboarding1,
      title: 'Welcome to Digital Clinic',
      description:
          'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.'),
  PageViewModel(
      img: Images.onboarding2,
      title: 'Ask a doctor online',
      description:
          'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.'),
  PageViewModel(
      img: Images.onboarding3,
      title: 'Physician on your doorstep',
      description:
          'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.'),
  PageViewModel(
      img: Images.onboarding4,
      title: 'Keep your health tests in one place',
      description:
          'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.')
];
