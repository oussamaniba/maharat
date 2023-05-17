class TypeChoiceItem {
  final String image;
  final String value;

  const TypeChoiceItem({
    required this.value,
    required this.image,
  });

  static List<TypeChoiceItem> get adults => [
        const TypeChoiceItem(
          value: "Woman",
          image: "lib/core/assets/mom.svg",
        ),
        const TypeChoiceItem(
          value: "Man",
          image: "lib/core/assets/dad.svg",
        ),
      ];
  static List<TypeChoiceItem> get child => [
        const TypeChoiceItem(
          value: "Boy",
          image: "lib/core/assets/boy.svg",
        ),
        const TypeChoiceItem(
          value: "Girl",
          image: "lib/core/assets/girl.svg",
        )
      ];
}
