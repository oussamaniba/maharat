import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class Sizes {
  static const appBarTabletSize = 80.0;
  static const appBarMobileSize = 60.0;

  BuildContext context;
  Sizes.of(this.context);

  double get appBarSize {
    var size = SizeSpec.of(context);
    if (size.isMobile) {
      return appBarMobileSize;
    }
    return appBarTabletSize;
  }
}
