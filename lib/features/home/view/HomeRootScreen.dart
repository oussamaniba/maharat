import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/routes/app_route.dart';
import 'package:maharat/core/routes/app_route.gr.dart';
import 'package:maharat/core/values/constants.dart';
import 'package:maharat/features/home/provider/HomeViewModel.dart';
import 'package:stacked/stacked.dart' as stacked;

@RoutePage()
class HomeRootScreen extends stacked.StackedView<HomeViewModel> {
  HomeRootScreen({super.key}) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }
  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return WillPopScope(
      onWillPop: () async {
        if (viewModel.selected == 0) {
          HomeRootRoute.page.toPage(0);
          return false;
        }
        return true;
      },
      child: AutoTabsScaffold(
        backgroundColor: Colors.white,
        homeIndex: 3,
        routes: [
          GroupRoute(onTap: (data) {
            getIt<AppRoutes>().push(SectionsRoute(data: data));
          }),
          SkillsRoute(skill: SkillsType.REMEMBERING),
          SkillsRoute(skill: SkillsType.READING),
          const AssessementRoute(),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    return HomeViewModel();
  }

  @override
  void onViewModelReady(HomeViewModel viewModel) async {
    await viewModel.initialize();
    super.onViewModelReady(viewModel);
  }
}
