class RegistrationAppBarItem {
  final String image;

  const RegistrationAppBarItem({
    required this.image,
  });

  static List<RegistrationAppBarItem> get items => [
        const RegistrationAppBarItem(image: "lib/core/assets/logo.jpeg"),
        const RegistrationAppBarItem(image: "lib/core/assets/logo.jpeg"),
        const RegistrationAppBarItem(image: "lib/core/assets/payment.png"),
      ];
}
