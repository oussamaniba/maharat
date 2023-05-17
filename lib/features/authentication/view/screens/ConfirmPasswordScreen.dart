import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/features/_commons/widgets/CommonButton.dart';
import 'package:maharat/features/authentication/view/widgets/AuthAppBar.dart';
import 'package:maharat/features/authentication/view/widgets/AuthPassword.dart';

@RoutePage()
class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            AuthAppBar(
              title: "نسيت كلمة المرور",
              onBackPerss: () => context.tabsRouter.setActiveIndex(2),
            ),
            Divider(color: Colors.grey[100]),
            AuthPassword(
              placeHolder: "كلمة المرور الجديدة",
              onPassword: (value) {},
            ).withPadding(const EdgeInsets.only(top: 50)),
            AuthPassword(
              placeHolder: "تأكيد كلمة المرور الجديدة",
              onPassword: (value) {},
            ).withPadding(const EdgeInsets.only(top: 20)),
            CommonButton(
              text: "التالى",
              paddingH: 30,
              onTap: () {},
            ).withPadding(const EdgeInsets.only(top: 60)),
          ],
        ),
      ),
    );
  }
}
