import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/_commons/widgets/CommonButton.dart';
import 'package:maharat/features/authentication/view/widgets/AuthNumber.dart';
import 'package:maharat/features/authentication/view/widgets/AuthPassword.dart';

@RoutePage()
class AuthenticationScreen extends StatelessWidget {
  final Function() onLogin;
  final Function() onRegister;
  final Function(String value) onPhoneNumber;
  final Function(String value) onPassword;

  const AuthenticationScreen({
    required this.onLogin,
    required this.onRegister,
    required this.onPhoneNumber,
    required this.onPassword,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeSpec.of(context).height * .3,
          ),
          AuthNumber(
            placeHolder: "رقم الجوال",
            onText: onPhoneNumber,
          ),
          const SizedBox(height: 20),
          AuthPassword(
            placeHolder: "كلمة المرور",
            onPassword: onPassword,
          ),
          const SizedBox(height: 20),
          CommonButton(
            text: "نسيت كلمة المرور",
            textColor: Colors.red[300],
            color: Colors.transparent,
            fontSize: 15.0,
            isUnderline: true,
            onTap: () {
              tabsRouter.setActiveIndex(1);
            },
          ),
          const SizedBox(height: 40),
          CommonButton(
            text: "الدخول",
            onTap: onLogin,
          ),
          SizedBox(
            width: SizeSpec.of(context).width,
            child: Text.rich(
              maxLines: 1,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              TextSpan(
                children: [
                  const TextSpan(text: 'ليس لديك حساب؟ '),
                  TextSpan(
                    text: 'تسجيل',
                    recognizer: TapGestureRecognizer()..onTap = onRegister,
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
    );
  }
}
