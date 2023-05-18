class CategoryItem {
  final String text;
  final bool isSelected;

  CategoryItem({
    required this.text,
    required this.isSelected,
  });

  static List<CategoryItem> get categories => [
        CategoryItem(text: "المجموعات", isSelected: true),
        CategoryItem(text: "المهارات\nوالتذكر", isSelected: false),
        CategoryItem(text: "المهارات\nوالقراءة", isSelected: false),
        CategoryItem(text: "اختبارالتحصيل\nاللغوي", isSelected: false),
      ];
}
