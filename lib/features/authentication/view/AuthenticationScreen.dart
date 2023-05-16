import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maharat/features/authentication/provider/AuthenticationViewModel.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class AuthenticationScreen extends StackedView<AuthenticationViewModel> {
  const AuthenticationScreen({super.key});

  @override
  Widget builder(BuildContext context, AuthenticationViewModel viewModel, Widget? child) {
    return const Scaffold();
  }

  @override
  AuthenticationViewModel viewModelBuilder(BuildContext context) {
    return AuthenticationViewModel();
  }
}
