import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/_commons/widgets/CommonButton.dart';
import 'package:maharat/features/registration/models/TypeChoiceItems.dart';
import 'package:maharat/features/registration/view/widgets/RegisterDropDown.dart';
import 'package:maharat/features/registration/view/widgets/RegisterNumber.dart';
import 'package:maharat/features/registration/view/widgets/RegisterPassword.dart';
import 'package:maharat/features/registration/view/widgets/RegisterSimpleText.dart';
import 'package:maharat/features/registration/view/widgets/TypeChoice.dart';

@RoutePage()
class FirstStepScreen extends StatelessWidget {
  const FirstStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeSpec.of(context).height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TypeChoice(
              items: TypeChoiceItem.adults,
            ),
            RegisterSimpleText(
              placeHolder: "الاسم",
              onText: (v) {},
            ).withPadding(const EdgeInsets.only(top: 20)),
            RegisterDropDown(
              placeHolder: "الدولة",
              onText: (value) {},
            ).withPadding(const EdgeInsets.only(top: 20)),
            RegisterNumber(
              placeHolder: "رقم الجوال",
              onText: (value) {},
            ).withPadding(const EdgeInsets.only(top: 20)),
            RegisterPassword(
              placeHolder: "كلمة المرور",
              onPassword: (value) {},
            ).withPadding(const EdgeInsets.only(top: 20)),
            CommonButton(
              text: "التالى",
              paddingH: 30,
              onTap: () => context.tabsRouter.setActiveIndex(1),
            ).withPadding(const EdgeInsets.only(top: 50)),
            SizedBox(
              width: SizeSpec.of(context).width,
              child: Text.rich(
                maxLines: 1,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                TextSpan(
                  children: [
                    const TextSpan(text: 'لديك حساب؟ '),
                    TextSpan(
                      text: 'دخول',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
