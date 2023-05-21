import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/features/_commons/widgets/CommonAppBar.dart';

class CommonTextWidget extends StatelessWidget {
  final String titleText;
  final String bodyText;
  final Function() onBackPress;
  const CommonTextWidget({
    super.key,
    required this.titleText,
    required this.bodyText,
    required this.onBackPress,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CommonAppBar(
              onBackPress: () => onBackPress,
            ),
            Text(titleText)
                .withPadding(const EdgeInsets.symmetric(vertical: 30)),
            Text(bodyText)
                .withPadding(const EdgeInsets.symmetric(horizontal: 30)),
          ],
        ),
      ),
    );
  }
}
