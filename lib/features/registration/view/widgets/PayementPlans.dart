import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/registration/models/PaymentPlan.dart';
import 'package:maharat/features/registration/view/widgets/RadioButton.dart';

class PaymentPlans extends StatefulWidget {
  const PaymentPlans({super.key});

  @override
  State<PaymentPlans> createState() => _PaymentPlansState();
}

class _PaymentPlansState extends State<PaymentPlans> {
  String selectedPlan = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: SizeSpec.of(context).width,
      child: ListView(
        reverse: true,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: List.generate(PaymentPlan.plans.length, (index) {
          PaymentPlan plan = PaymentPlan.plans[index];
          return _PaymentPlanItem(
            plan: plan,
            selectedPlan: selectedPlan,
            onSelect: (plan) {
              setState(() {
                selectedPlan = plan.name;
              });
            },
          );
        }),
      ),
    );
  }
}

class _PaymentPlanItem extends StatelessWidget {
  final String selectedPlan;
  final PaymentPlan plan;
  final Function(PaymentPlan plan) onSelect;

  const _PaymentPlanItem({
    required this.selectedPlan,
    required this.plan,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 200,
            width: 300,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orange[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () => onSelect(plan),
              borderRadius: BorderRadius.circular(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "lib/core/assets/back.svg",
                  ),
                  Text(
                    plan.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${plan.price} ج.م",
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        RadioButton(
          value: plan.name,
          groupValue: selectedPlan,
        )
      ],
    );
  }
}
