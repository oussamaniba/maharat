import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/routes/app_route.gr.dart';
import 'package:maharat/features/home/provider/HomeViewModel.dart';
import 'package:maharat/features/home/view/widgets/home_widgets/HomeCategorySelection.dart';
import 'package:stacked/stacked.dart';

class HomeWrapper extends ViewModelWidget<HomeViewModel> {
  final Widget child;
  const HomeWrapper({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Container(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0).copyWith(top: 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(color: Colors.grey[100]!, offset: const Offset(.5, .5))
          ],
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
      ).toScrollable(),
    );
  }
}
