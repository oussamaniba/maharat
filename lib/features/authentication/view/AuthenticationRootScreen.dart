import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/routes/app_route.gr.dart';
import 'package:maharat/features/authentication/provider/AuthenticationViewModel.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class AuthenticationRootScreen extends StackedView<AuthenticationViewModel> {
  const AuthenticationRootScreen({super.key});

  @override
  Widget builder(
    BuildContext context,
    AuthenticationViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: AutoTabsScaffold(
        backgroundColor: Colors.white,
        routes: [
          AuthenticationRoute(
            onPhoneNumber: (username) {},
            onPassword: (password) {},
            onLogin: () {},
            onRegister: () => viewModel.routes.navigate(const RegistrationRoute()),
          ),
          ForgotPasswordRoute(
            onPhone: (username) {},
            onNext: () {},
            onBackPress: () => viewModel.routes.pop(),
          ),
          const OtpRoute(),
          const ConfirmPasswordRoute()
        ],
      ),
    );
  }

  @override
  AuthenticationViewModel viewModelBuilder(BuildContext context) {
    return AuthenticationViewModel();
  }
}
