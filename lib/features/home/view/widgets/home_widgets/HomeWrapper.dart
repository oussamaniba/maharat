import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/routes/app_route.gr.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/home/provider/HomeViewModel.dart';
import 'package:maharat/features/home/view/widgets/home_widgets/HomeCategorySelection.dart';
import 'package:maharat/features/home/view/widgets/home_widgets/HomeTopBar.dart';
import 'package:stacked/stacked.dart';

class HomeWrapper extends ViewModelWidget<HomeViewModel> {
  final Widget child;
  const HomeWrapper({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Stack(
      children: [
        const Column(
          children: [
            HomeTopBar(),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20)
              .copyWith(top: SizeSpec.of(context).height * .25),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              HomeCategoriesSelection(
                selected: viewModel.selected,
                onChange: (index) {
                  HomeRootRoute.page.toPage(index);
                  viewModel.updateSelected(index);
                },
              ),
              child,
            ],
          ),
        ).toScrollable(padding: const EdgeInsets.only(top: 80)),
      ],
    );
  }
}
