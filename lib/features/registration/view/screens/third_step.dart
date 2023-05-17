import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/_commons/widgets/CommonButton.dart';
import 'package:maharat/features/registration/view/widgets/PayementPlans.dart';

@RoutePage()
class ThirdStepScreen extends StatelessWidget {
  const ThirdStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeSpec.of(context).height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const PaymentPlans(),
            CommonButton(
              text: "الدفع",
              onTap: () {},
              icon: Ionicons.arrow_back_outline,
            ).withPadding(const EdgeInsets.symmetric(vertical: 40))
          ],
        ),
      ),
    );
  }
}
