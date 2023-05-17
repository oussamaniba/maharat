class PaymentPlan {
  final String name;
  final double price;

  const PaymentPlan({
    required this.name,
    required this.price,
  });

  static List<PaymentPlan> get plans => [
        const PaymentPlan(name: "اشتراك شهري", price: 149.9),
        const PaymentPlan(name: "اشتراك سنوي", price: 499.9),
        const PaymentPlan(name: "اشتراك 6 اشهر", price: 299.9),
      ];
}
