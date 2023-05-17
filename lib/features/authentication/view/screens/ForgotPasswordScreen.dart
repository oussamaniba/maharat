import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/features/_commons/widgets/CommonButton.dart';
import 'package:maharat/features/authentication/view/widgets/AuthAppBar.dart';
import 'package:maharat/features/authentication/view/widgets/AuthNumber.dart';

@RoutePage()
class ForgotPasswordScreen extends StatelessWidget {
  final Function(String value) onPhone;
  final Function() onNext;
  final Function() onBackPress;
  const ForgotPasswordScreen({
    required this.onPhone,
    required this.onNext,
    required this.onBackPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            AuthAppBar(
              title: "نسيت كلمة المرور",
              onBackPerss: () => context.tabsRouter.setActiveIndex(0),
            ),
            Divider(color: Colors.grey[100]),
            AuthNumber(
              placeHolder: "رقم الجوال",
              onText: onPhone,
            ).withPadding(const EdgeInsets.only(top: 50)),
            CommonButton(
              text: "التالى",
              paddingH: 30,
              onTap: () => context.tabsRouter.setActiveIndex(2),
            ).withPadding(const EdgeInsets.only(top: 60)),
          ],
        ),
      ),
    );
  }
}
