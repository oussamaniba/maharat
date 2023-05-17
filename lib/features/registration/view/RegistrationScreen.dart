import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/routes/app_route.gr.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/registration/models/RegistrationAppBarItem.dart';
import 'package:maharat/features/registration/provider/RegistrationViewModel.dart';
import 'package:maharat/features/registration/view/widgets/RegistrationAppBar.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class RegistrationScreen extends StackedView<RegistrationViewModel> {
  const RegistrationScreen({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegistrationViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: AutoTabsScaffold(
        backgroundColor: Colors.white,
        appBarBuilder: (context, tabsRouter) {
          int index = tabsRouter.activeIndex;
          return PreferredSize(
            preferredSize: Size(SizeSpec.of(context).width, 130),
            child: RegistrationAppBar(
              title: "خطوة ${index + 1} / 3",
              item: RegistrationAppBarItem.items[index],
              onBackPerss: () {
                if (index == 0) {
                  tabsRouter.topRoute.router.pop();
                } else {
                  tabsRouter.setActiveIndex(index - 1);
                }
              },
            ),
          );
        },
        routes: const [
          FirstStepRoute(),
          SecondStepRoute(),
          ThirdStepRoute(),
        ],
        persistentFooterButtons: [
          SizedBox(
            height: 50,
            width: SizeSpec.of(context).width,
            child: Center(
              child: Text.rich(
                maxLines: 1,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                TextSpan(
                  children: [
                    const TextSpan(text: "بالقيام بالتسجيل فأنت توافق على "),
                    TextSpan(
                      text: "الشروط والاحكام",
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: const TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.orangeAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  RegistrationViewModel viewModelBuilder(BuildContext context) {
    return RegistrationViewModel();
  }
}
