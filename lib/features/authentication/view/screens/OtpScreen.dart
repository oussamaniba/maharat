import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/features/_commons/widgets/CommonButton.dart';
import 'package:maharat/features/authentication/view/widgets/AuthAppBar.dart';
import 'package:maharat/features/authentication/view/widgets/AuthOtp.dart';

@RoutePage()
class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            AuthAppBar(
              title: "رمز التحقق",
              onBackPerss: () => context.tabsRouter.setActiveIndex(1),
            ),
            Divider(color: Colors.grey[100]),
            AuthOtp(
              placeHolder: "رقم الجوال",
              onText: (value) {},
            ).withPadding(const EdgeInsets.only(top: 50)),
            CommonButton(
              text: "التالى",
              paddingH: 30,
              onTap: () => context.tabsRouter.setActiveIndex(3),
            ).withPadding(const EdgeInsets.only(top: 60)),
            CommonButton(
              text: "إعادة ارسال",
              paddingH: 30,
              color: Colors.transparent,
              textColor: Colors.red[200],
              fontSize: 16.0,
              isUnderline: true,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
