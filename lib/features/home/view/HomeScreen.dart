import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maharat/features/home/provider/HomeViewModel.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class HomeScreen extends StackedView<HomeViewModel> {
  const HomeScreen({super.key});
  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      backgroundColor: Colors.red,
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    return HomeViewModel();
  }
}
