import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/routes/app_route.gr.dart';
import 'package:maharat/features/onboarding/models/OnBoardingItemModel.dart';
import 'package:maharat/features/onboarding/provider/OnboardingViewModel.dart';
import 'package:maharat/features/onboarding/view/widgets/OnBoardingHolder.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class OnboardingScreen extends StackedView<OnboardingViewModel> {
  const OnboardingScreen({super.key});

  @override
  Widget builder(
    BuildContext context,
    OnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: OnBoardingHolder(
        onBoardings: OnBoardingItemModel.onboardItems,
        onFinishOrIgnore: () {
          viewModel.routes.replace(const AuthenticationRoute());
        },
      ),
    );
  }

  @override
  OnboardingViewModel viewModelBuilder(BuildContext context) {
    return OnboardingViewModel();
  }
}