import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: SizeSpec.of(context).width,
      color: Colors.white,
    );
  }
}
