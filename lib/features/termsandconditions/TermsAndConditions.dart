import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maharat/core/values/strings.dart';
import 'package:maharat/features/_commons/widgets/CommonTextWidget.dart';

@RoutePage()
class TermsAndConditions extends StatelessWidget {
  TermsAndConditions({
    super.key,
  }) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    return CommonTextWidget(
      titleText: AppStrings.termsAndConditionsTitleText,
      bodyText: AppStrings.termsAndConditionsContentText,
      onBackPress: () {},
    );
  }
}
