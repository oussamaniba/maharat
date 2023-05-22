import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharat/features/settings/provider/SettingViewModel.dart';
import 'package:maharat/features/settings/view/widgets/SettingAppBar.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class SettingScreen extends StackedView<SettingViewModel> {
  SettingScreen({
    super.key,
  }) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  Widget builder(BuildContext context, SettingViewModel viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SettingAppBar(
              onBackPress: () {
                // TODO: implement pop Action
              },
            ),
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width / 2,
              padding: const EdgeInsets.all(32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("الصوت"),
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset("lib/core/assets/sound.svg"),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: VerticalDivider(
                      color: Colors.grey,
                      width: 5,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("استقبال الاشعارات"),
                        Switch(
                          value: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  SettingViewModel viewModelBuilder(BuildContext context) {
    return SettingViewModel();
  }
}
