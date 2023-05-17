class OnBoardingItemModel {
  final String title;
  final String description;
  final String boardText;
  final double boardSize;
  final double boardTopPosition;
  final double boardRightPosition;
  final String image;

  OnBoardingItemModel({
    required this.title,
    required this.description,
    required this.boardText,
    this.boardSize = 40,
    this.boardTopPosition = .17,
    this.boardRightPosition = .3,
    required this.image,
  });

  static List<OnBoardingItemModel> get onboardItems => [
        OnBoardingItemModel(
          title: "تعلم..",
          description: "مع مهارة طفل كل ما يحتاجه طفلك",
          boardText: "اختبارات التحصيل",
          boardSize: 28,
          boardTopPosition: .19,
          boardRightPosition: .3,
          image: "lib/core/assets/onboarding_boy.svg",
        ),
        OnBoardingItemModel(
          title: "تابع..",
          description: "مستوى طفلك مع اختبارات مهارة",
          boardText: "المجموعات",
          boardTopPosition: .173,
          boardRightPosition: .44,
          image: "lib/core/assets/onboarding_girl.svg",
        )
      ];
}
